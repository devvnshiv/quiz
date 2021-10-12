import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Api/Api.dart';
import 'package:quiz/Bloc/bloc.dart';
import 'package:quiz/Bloc/quiz_event.dart';
import 'package:quiz/UI/Finalreport/finalreport.dart';
import 'package:quiz/UI/Quiz/Quiz_Question.dart';
import 'package:quiz/Bloc/quiz_state.dart';
import 'package:quiz/UI/Quiz/widgets/preload.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/UI/utils/loaderror.dart';

void main() async{
  var result = await Api().GetQuestion();
  print(result.mESSAGE);
  print(result.dATA.questions);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, oriantion) {
        AppSizeConfig().init(constraints, oriantion);
        return
          MaterialApp(
            title: 'Quiz',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.green,
              // This makes the visual density adapt to the platform that you run
              // the app on. For desktop platforms, the controls will be smaller and
              // closer together (more dense) than on mobile platforms.
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: Appevent(),
          );
      }
      );
    }
    );
  }
}

class Appevent extends StatefulWidget {


  @override
  _AppeventState createState() => _AppeventState();
}

class _AppeventState extends State<Appevent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuizBloc>(create:(context)=>QuizBloc()..add(QuizEvent.quizlistevent()),
    child: BlocConsumer<QuizBloc, QuizState>(builder: (_,state){
      return state.when(initial:()=> Preload (), loading: ()=>Preload(), quizs:(e)=>Quiz_Quistion(question: e.response,index: e.respons2,questionmap: {},), finalreport: (e)=> Final_report(correct: e.response,wrong: e.respons2,notanswer: e.response3,questionmap: e.respons4,), error:()=>loaderror(),quiznext:(e)=>Quiz_Quistion(question: e.response,index: e.respons2,questionmap: e.respons3,),  );

    },




        listener: (_ ,state){

        }),
    );
  }
}
