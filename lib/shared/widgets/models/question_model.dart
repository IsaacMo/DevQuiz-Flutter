import 'dart:convert';

import 'package:DevQuiz/shared/widgets/models/awanser_model.dart';

class QuestionModel {
  final String title;
  final List<AwanserModel> awansers;

  QuestionModel({required this.title, required this.awansers})
      : assert(
          //ASSERT GARANTE QUE A CLASSE AO SER INSTANCIADA RECEBA APENAS O QUE FOI CRIADA PARA RECEBER
          awansers.length == 4,
        );

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awansers': awansers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awansers: List<AwanserModel>.from(
          map['awansers']?.map((x) => AwanserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}
