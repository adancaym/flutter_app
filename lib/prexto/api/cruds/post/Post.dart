import 'package:flutterapphttpclient/prexto/api/cruds/post/PostModel.dart';
import 'package:flutterapphttpclient/prexto/core/http/ApiEnpoint.dart';

class Post extends ApiEndpoint{
  Post(): super('post/',new PostModel());
}