import 'package:flutterapphttpclient/prexto/api/cruds/author/AuthorModel.dart';
import 'package:flutterapphttpclient/prexto/core/Model.dart';

class PostModel extends Model{
  num id;
  String title;
  String content;
  DateTime createdAt;
  DateTime updatedAt;
  num authorId;
  AuthorModel author;

  PostModel({
    this.id,
    this.title,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.authorId,
    this.author
  });
  factory PostModel.fromJson(Map<String, dynamic> json){
    return PostModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      authorId: json['authorId'],
      author: AuthorModel.fromJson(json['author']),
    );
  }
  Model fromJson(Map<String, dynamic> json){
    return PostModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      authorId: json['authorId'],
      author: AuthorModel.fromJson(json['author']),
    );
  }
}