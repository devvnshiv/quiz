import 'package:super_enum/super_enum.dart';
part 'quiz_event.super.dart';

@superEnum
enum _QuizEvent{
@object
Quizlistevent,
@Data(fields:[ DataField<dynamic>("params"),DataField<dynamic>("map"),DataField<dynamic>("index"
    )])
Quizreportevent,
@Data(fields:[ DataField<dynamic>("params"),DataField<dynamic>("map"),DataField<dynamic>("index"
)])
Quiznextevent,
}