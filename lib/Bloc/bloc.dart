// used flutter_bloc with super enum generator


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Api/Api.dart';
import 'package:quiz/Bloc/quiz_event.dart';

import 'package:quiz/Bloc/quiz_state.dart';

import 'quiz_event.dart';


class QuizBloc  extends Bloc<QuizEvent, QuizState> {

  QuizBloc() :super(QuizState.initial());
  @override
  Stream<QuizState> mapEventToState(QuizEvent event) async* {
    yield* event.when(
        quizlistevent:()=> instialQuistion(),
        quizreportevent:(e)=>Quizreport(e), quiznextevent:(e)=>Quiznext(e) );
  }

Stream<QuizState>  instialQuistion()async*{

  var result = await Api().GetQuestion();
  print(result.sTATUSCODE);
  if(result.sTATUSCODE!=200|| result.dATA.questions.length==0){

    yield QuizState.error();
  }else {

    yield QuizState.quizs(response: result.dATA.questions, respons2: 0);
  }


}

  Stream<QuizState>  Quiznext( Quiznextevent event)async*{
    print(event.map);
    print(event.index);
    yield QuizState.loading();
    yield QuizState.quiznext(response: event.params, respons2:event.index,respons3:event.map );
    
    }


  }

  Stream<QuizState>  Quizreport(  Quizreportevent event)async*{
int countcorrect=0;
int countnotanswer=0;
int countworng =0;
print(event.map.length);
for(int i=1;i<=event.map.length; i++){// counting question answered
  if(event.map[i]=="correct") {
    countcorrect = countcorrect + 1;
  }  else if(event.map[i]=="wrong"){
     countworng= countworng+1;
  } else {
    countnotanswer=countnotanswer+1;
  }

  }
print(countcorrect);
print(countworng);

yield QuizState.finalreport(response: countcorrect, respons2: countworng,response3: countnotanswer,respons4: event.map);
}





