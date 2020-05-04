import 'dart:convert';
import 'package:flutterapphttpclient/prexto/core/http/Url.dart';
import 'package:flutterapphttpclient/prexto/core/Model.dart';
import 'package:flutterapphttpclient/prexto/core/http/http.dart';

class ApiEndpoint extends Url {

  String endpoint;
  HttpClient http;
  String endpoinPrefix;
  Model model;
  ApiEndpoint(String endpoint, Model model) : super('http://a21076f8.ngrok.io/'){
    this.endpoinPrefix = 'api/';
    this.model = model;
    this.endpoint = this.base+ this.endpoinPrefix + endpoint;
    this.http = new HttpClient(this.endpoint);
  }

  list() async {
    return await this.http.getMethod(this.endpoint + 'list').then((response) {
      var list = jsonDecode(response.body)['result'] as List;
      var result = list.map<Model>((json) => this.model.fromJson(json)).toList();
      return result;
    });
  }
  retrieve(String id) {
    return this.http.getMethod(this.endpoint + id);
  }
  create(Model model){
    return this.http.postMethod(this.endpoint, model);
  }
  update(String id, Model model){
    return this.http.postMethod(this.endpoint + id, model);
  }
  delete(String id){
    return this.http.deleteMethod(this.endpoint + id);
  }
}