import 'package:flutter/material.dart';
import 'package:quiz/UI/Finalreport/widgets/final_data.dart';
import 'package:quiz/UI/Finalreport/widgets/question_list.dart';
import 'package:quiz/UI/utils/Resposive.dart';
class Final_report extends StatefulWidget {
  final Map questionmap;
  final int correct;
  final int wrong;
  final int notanswer;

  const Final_report({Key key, this.questionmap, this.correct, this.wrong, this.notanswer}) : super(key: key);


  @override
  _Final_reportState createState() => _Final_reportState();
}

class _Final_reportState extends State<Final_report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5*AppSizeConfig.heightMultiplier,),
          Center(child: Text("Report",style: TextStyle(fontSize: 4.0*AppSizeConfig.textMultiplier,
              color: Colors.red,fontWeight: FontWeight.bold),)),
          Question_list(questionmap: widget.questionmap,),
          Totalreport(correct: widget.correct,wrong: widget.wrong,answer: widget.notanswer,)

        ],
      ),
    );
  }
}
