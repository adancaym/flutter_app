import 'package:http/http.dart' as http;

class HttpClient {

  Map<String, String> headers;
  var options;
  HttpClient(String endpoint){
    this.headers = <String, String> {'Content-Type': 'application/json; charset=UTF-8' };
  }
  getMethod(url) {
    return http.get(url, headers: this.headers);
  }
  postMethod(url, data){
    return http.post(url, headers: this.headers, body: data);
  }
  putMethod(url, data){
    return http.put(url, headers: this.headers, body: data);
  }
  deleteMethod(url){
    return http.delete(url, headers: this.headers);
  }
}