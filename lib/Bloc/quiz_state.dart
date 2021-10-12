


import 'package:super_enum/super_enum.dart';

part 'quiz_state.super.dart';

@superEnum
enum _QuizState{
@object
Initial,
@object
Loading,
@Data(fields: [DataField<dynamic>('response'),DataField<dynamic>('respons2'),DataField<dynamic>('respons3')])
Quizs,
@Data(fields: [DataField<dynamic>('response'),DataField<dynamic>('respons2'),DataField<dynamic>('respons3')])
Quiznext,
@Data(fields: [DataField<dynamic>('response'),DataField<dynamic>('respons2'),DataField<dynamic>('response3'),DataField<dynamic>('respons4')])
Finalreport,
@object
Error,
}