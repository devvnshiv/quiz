import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quiz/models/quiz_model/Quiz_model.dart';

class Api{

  String url = "https://demoapp.in/practical/practical.php";


  Future<Quiz_models> GetQuestion ()async{
var result = await Dio().get(url);
if(result.statusCode==200){
  var decode = json.decode(result.data);
  return Quiz_models.fromJson(decode);
} else {
  var decode = json.decode(result.data);
  return Quiz_models.fromJson(decode);
}
  }
}