// json to dartmodel generated from jsontodart.com

class Quiz_models {
  int sTATUSCODE;
  String mESSAGE;
  DATA dATA;

  Quiz_models({this.sTATUSCODE, this.mESSAGE, this.dATA});

  Quiz_models.fromJson(Map<String, dynamic> json) {
    sTATUSCODE = json['STATUS_CODE'];
    mESSAGE = json['MESSAGE'];
    dATA = json['DATA'] != null ? new DATA.fromJson(json['DATA']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['STATUS_CODE'] = this.sTATUSCODE;
    data['MESSAGE'] = this.mESSAGE;
    if (this.dATA != null) {
      data['DATA'] = this.dATA.toJson();
    }
    return data;
  }
}

class DATA {
  List<Questions> questions;

  DATA({this.questions});

  DATA.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = new List<Questions>();
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  int questionId;
  String question;
  String ansA;
  String ansB;
  String ansC;
  String ansD;
  String answer;

  Questions(
      {this.questionId,
        this.question,
        this.ansA,
        this.ansB,
        this.ansC,
        this.ansD,
        this.answer});

  Questions.fromJson(Map<String, dynamic> json) {
    questionId = json['question_id'];
    question = json['question'];
    ansA = json['ans_a'];
    ansB = json['ans_b'];
    ansC = json['ans_c'];
    ansD = json['ans_d'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question_id'] = this.questionId;
    data['question'] = this.question;
    data['ans_a'] = this.ansA;
    data['ans_b'] = this.ansB;
    data['ans_c'] = this.ansC;
    data['ans_d'] = this.ansD;
    data['answer'] = this.answer;
    return data;
  }
}
