import 'package:flutter/material.dart';
import 'package:quiz/UI/Quiz/widgets/Qptions.dart';
import 'package:quiz/UI/utils/Resposive.dart';



class Question extends StatefulWidget {
  final String question;

  const Question({this.question});
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95*AppSizeConfig.widthMultiplier,
      child: Text(widget.question,style: TextStyle(fontSize: 3.0*AppSizeConfig.textMultiplier,),),

    );
  }
}
