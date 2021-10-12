import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Bloc/bloc.dart';
import 'package:quiz/models/quiz_model/Quiz_model.dart';
import 'package:quiz/Bloc/quiz_event.dart';

class Qptionwidget extends StatefulWidget {
  final Questions question;
  final List<Questions> listquestion;
  final Map Questionmap;
  final int index;
  final  Timer timmer;

  const Qptionwidget({Key key, this.question, this.Questionmap, this.index, this.listquestion, this.timmer}) : super(key: key);


  @override
  _QptionwidgetState createState() => _QptionwidgetState();
}

class _QptionwidgetState extends State<Qptionwidget> {
  String radioItem = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioListTile(
        groupValue: radioItem,
        title: Text(widget.question.ansA),
        value: widget.question.ansA,
        onChanged: (val) {
          setState(() {
            radioItem = val;
            if(val==widget.question.answer) {
              widget.Questionmap[widget.question.questionId] = "correct";
            }else {
              widget.Questionmap[widget.question.questionId] = "wrong";
            }
          });
        },
      ),

          RadioListTile(
            groupValue: radioItem,
            title: Text(widget.question.ansB),
            value: widget.question.ansB,
            onChanged: (val) {
              setState(() {
                radioItem = val;
                if(val==widget.question.answer) {
                  widget.Questionmap[widget.question.questionId] = "correct";
                }else {
                  widget.Questionmap[widget.question.questionId] = "wrong";
                }
              });
            },
          ),
          RadioListTile(
            groupValue: radioItem,
            title: Text(widget.question.ansC),
            value: widget.question.ansC,
            onChanged: (val) {
              setState(() {
                radioItem = val;
                if(val==widget.question.answer) {
                  widget.Questionmap[widget.question.questionId] = "correct";
                }else {
                  widget.Questionmap[widget.question.questionId] = "wrong";
                }
              });
            },
          ),
          RadioListTile(
            groupValue: radioItem,
            title: Text(widget.question.ansD),
            value: widget.question.ansD,
            onChanged: (val) {
              setState(() {
                radioItem = val;
                if(val==widget.question.answer) {
                  widget.Questionmap[widget.question.questionId] = "correct";
                }else {
                  widget.Questionmap[widget.question.questionId] = "wrong";
                }
              });
            },
          ),

          TextButton(onPressed: (){
            print(widget.Questionmap);

            BlocProvider.of<QuizBloc>(context).add(
              QuizEvent.quiznextevent(params: widget.listquestion,index: widget.index+1,map:widget.Questionmap),
            );
          }, child: Text("next"))

        ],
      )
   
     
    );
  }
}
