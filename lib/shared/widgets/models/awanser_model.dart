import 'dart:convert';

class AwanserModel {
  final String title;
  final bool isRight;

  AwanserModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AwanserModel.fromMap(Map<String, dynamic> map) {
    return AwanserModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AwanserModel.fromJson(String source) =>
      AwanserModel.fromMap(json.decode(source));
}
