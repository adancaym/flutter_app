import 'package:flutterapphttpclient/prexto/core/Model.dart';

class AuthorModel extends Model{
  num id;
  String firstName;
  String lastName;
  DateTime createdAt;
  DateTime updatedAt;

  AuthorModel({this.id,
    this.firstName,
    this.lastName,
    this.createdAt,
    this.updatedAt,
  });

  factory AuthorModel.fromJson(Map<String, dynamic> json){

    return AuthorModel(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}