import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/author/AuthorModel.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/author/AuthorView.dart';

class AuthorViewState extends State<AuthorView> {

  AuthorModel author;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Author'),
      ),
      body: _authorDisplay(),
    );
  }
  final TextStyle _biggerFont = const TextStyle(fontSize: 13.0);
  Widget _authorDisplay () {
    return Scaffold(
     // body: Text(author.firstName, style: _biggerFont),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text( author.firstName, style: Theme.of(context).textTheme.display1,),
              Text( author.lastName, style: Theme.of(context).textTheme.display1,),
            ],
          )
      )
    );
  }

}
