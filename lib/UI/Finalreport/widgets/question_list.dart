import 'package:flutter/material.dart';
import 'package:quiz/UI/utils/Resposive.dart';
class Question_list extends StatefulWidget {
  final Map questionmap;

  const Question_list({Key key, this.questionmap}) : super(key: key);

  @override
  _Question_listState createState() => _Question_listState();
}

class _Question_listState extends State<Question_list> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60*AppSizeConfig.heightMultiplier,
      width: 90*AppSizeConfig.widthMultiplier,
      child: ListView.builder(
          itemCount: widget.questionmap.length,
          itemBuilder: (_,index){
            print(index);
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text("Question${index+1}",style: TextStyle(fontSize: 3.0*AppSizeConfig.textMultiplier),),
            Text(widget.questionmap[index+1].toString(),style: TextStyle(fontSize: 3.0*AppSizeConfig.textMultiplier ,fontWeight: FontWeight.bold,
                color:widget.questionmap[index+1]=="correct"?Colors.green:widget.questionmap[index+1]=="wrong"?Colors.red:Colors.blue ),),

            ],
          ),
        );

      }),
    );
  }
}
