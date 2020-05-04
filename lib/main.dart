import 'package:flutter/material.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/post/Post.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/post/PostView.dart';


void main() async{

  Post postController = new Post();
  var lista = await postController.list();
  MyApp app = new MyApp();
  app.postView.postViewState.posts= lista;
  runApp(app);
}

class MyApp extends StatelessWidget {
  PostView postView = new PostView();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: postView,
    );
  }
}



