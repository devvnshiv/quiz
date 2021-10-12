import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Bloc/bloc.dart';
import 'package:quiz/UI/Quiz/widgets/Qptions.dart';
import 'package:quiz/UI/Quiz/widgets/Questiontext.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/models/quiz_model/Quiz_model.dart';
import 'package:quiz/Bloc/quiz_event.dart';

class Quiz_Quistion extends StatefulWidget {
final  List<Questions> question;
final  int index;
final Map questionmap;

  const Quiz_Quistion({ this.question, this.index, this.questionmap});


  @override
  _Quiz_QuistionState createState() => _Quiz_QuistionState();
}

class _Quiz_QuistionState extends State<Quiz_Quistion> {
  Timer _timer;
  int _start=60 ;
  String radioItem = '';

  @override
  void initState() {
    timers();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {

    // TODO: implement dispose
    timers();
    _timer.cancel();
    super.dispose();
  }

  timers(){



    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {

            if (_start == 0) {
              setState(() {

                  widget.questionmap[widget.question[widget.index].questionId] =
                  "Not answer";
                  BlocProvider.of<QuizBloc>(context).add(
                    QuizEvent.quiznextevent(params: widget.question,
                        index: widget.index + 1,
                        map: widget.questionmap),
                  );
                  _start = 60;
                         });

            } else {
              setState(() {
                _start--;
              });
            }
        }

    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 5*AppSizeConfig.heightMultiplier,),
          Center(child: Text(_start.toString(),style: TextStyle(fontSize: 4.0*AppSizeConfig.textMultiplier, color: Colors.red,fontWeight: FontWeight.bold),)),
SizedBox(height: 10*AppSizeConfig.heightMultiplier,),

          Center(child: Text("Quiz",style: TextStyle(fontSize: 4.0*AppSizeConfig.textMultiplier, color: Colors.red,fontWeight: FontWeight.bold),)),
          Question(question: widget.question[widget.index].question,),
      Container(
          child: Column(
            children: [
              RadioListTile(
                groupValue: radioItem,
                title: Text(widget.question[widget.index].ansA),
                value: widget.question[widget.index].ansA,
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                    if(val==widget.question[widget.index].answer) {
                      widget.questionmap[widget.question[widget.index].questionId] = "correct";
                    }else {
                      widget.questionmap[widget.question[widget.index].questionId] = "wrong";
                    }
                  });
                },
              ),

              RadioListTile(
                groupValue: radioItem,
                title: Text(widget.question[widget.index].ansB),
                value: widget.question[widget.index].ansB,
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                    if(val==widget.question[widget.index].answer) {
                      widget.questionmap[widget.question[widget.index].questionId]= "correct";
                    }else {
                      widget.questionmap[widget.question[widget.index].questionId] = "wrong";
                    }
                  });
                },
              ),
              RadioListTile(
                groupValue: radioItem,
                title: Text(widget.question[widget.index].ansC),
                value: widget.question[widget.index].ansC,
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                    if(val==widget.question[widget.index].answer) {
                      widget.questionmap[widget.question[widget.index].questionId]= "correct";
                    }else {
                      widget.questionmap[widget.question[widget.index].questionId]= "wrong";
                    }
                  });
                },
              ),
              RadioListTile(
                groupValue: radioItem,
                title: Text(widget.question[widget.index].ansD),
                value: widget.question[widget.index].ansD,
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                    if(val==widget.question[widget.index].answer) {
                      widget.questionmap[widget.question[widget.index].questionId]= "correct";
                    }else {
                      widget.questionmap[widget.question[widget.index].questionId] = "wrong";
                    }
                  });
                },
              ),

              TextButton(onPressed: (){
                print(widget.questionmap);
if(widget.index+1==widget.question.length){
  BlocProvider.of<QuizBloc>(context).add(
    QuizEvent.quizreportevent(params: widget.question,index: widget.index+1,map:widget.questionmap),
  );
} else {
  BlocProvider.of<QuizBloc>(context).add(
    QuizEvent.quiznextevent(params: widget.question,
        index: widget.index + 1,
        map: widget.questionmap),
  );
  setState(() {
    _start = 60;
  });
}

              }, child: Text("next"))

            ],
          )


      ),
        ],
      ),
    );
  }
}
