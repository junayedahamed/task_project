import 'dart:convert';

class PostDataUiModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostDataUiModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  PostDataUiModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) => PostDataUiModel(
    userId: userId ?? this.userId,
    id: id ?? this.id,
    title: title ?? this.title,
    body: body ?? this.body,
  );

  factory PostDataUiModel.fromJson(String str) =>
      PostDataUiModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PostDataUiModel.fromMap(Map<String, dynamic> json) => PostDataUiModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
