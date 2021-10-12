import 'package:flutter/material.dart';
import 'package:quiz/UI/utils/Resposive.dart';

class Totalreport extends StatefulWidget {
  final int wrong;
  final int correct;
  final int answer;
  final int index;

  const Totalreport({Key key, this.wrong, this.correct, this.answer, this.index}) : super(key: key);


  @override
  _TotalreportState createState() => _TotalreportState();
}

class _TotalreportState extends State<Totalreport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(child: Text("Correct answer ${widget.correct.toString()}",style: TextStyle(fontSize: 4.0*AppSizeConfig.textMultiplier,
              color: Colors.green,fontWeight: FontWeight.bold),)),
          Center(child: Text(" wrong answer ${widget.wrong.toString()}",style: TextStyle(fontSize: 4.0*AppSizeConfig.textMultiplier,
              color: Colors.red,fontWeight: FontWeight.bold),)),
          Center(child: Text("not answer ${widget.answer.toString()}",style: TextStyle(fontSize: 4.0*AppSizeConfig.textMultiplier,
              color: Colors.blue,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
