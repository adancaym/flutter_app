import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/author/AuthorView.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/post/PostModel.dart';
import 'package:flutterapphttpclient/prexto/api/cruds/post/PostView.dart';

class PostViewState extends State<PostView> {

  var posts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: _buildRows(),
    );
  }
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  Widget _buildRows() {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: /*1*/ (context, i) {
          print(i);
          return _buildRow(posts[i]);
        });
  }
  Widget _buildRow(PostModel post) {
    return ListTile(
      title: Text(
        post.title,
        style: _biggerFont,
      ),onTap: (){
        AuthorView authorView = new AuthorView();
        authorView.authorState.author = post.author ;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => authorView),
      );
    },
      onLongPress: () {

    },
    );
  }
}
