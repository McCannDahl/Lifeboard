
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

class ToBackend {
    static Future<Response> login(String email, String password) async {
      final credentials = '$email:$password';
      final stringToBase64 = utf8.fuse(base64);
      final encodedCredentials = stringToBase64.encode(credentials);
      Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: "application/json", // or whatever
        HttpHeaders.authorizationHeader: "Basic $encodedCredentials",
      };
      String url = 'http://localhost:3000/api/auth/login';
      // Map<String, String> headers = {"Content-type": "application/json"};
      String json = '{"email": "$email", "password": "$password"}';
      // make POST request
      return await post(url, headers: headers, body: json);
      // check the status code for the result
      //int statusCode = response.statusCode;
      // this API passes back the id of the new item added to the body
      //String body = response.body;
      //debugPrint('statusCode: $statusCode');
      //debugPrint('body: $body');
    }
    static Future<Response> register(String email, String password, String firstName, String lastName) async {
      final credentials = '$email:$password';
      final stringToBase64 = utf8.fuse(base64);
      final encodedCredentials = stringToBase64.encode(credentials);
      Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: "application/json", // or whatever
        HttpHeaders.authorizationHeader: "Basic $encodedCredentials",
      };
      String url = 'http://localhost:3000/api/auth/register';
      // Map<String, String> headers = {"Content-type": "application/json"};
      String json = '{"email": "$email", "password": "$password", "firstName": "$firstName", "lastName": "$lastName"}';
      // make POST request
      return await post(url, headers: headers, body: json);
      // check the status code for the result
      //int statusCode = response.statusCode;
      // this API passes back the id of the new item added to the body
      //String body = response.body;
      //debugPrint('statusCode: $statusCode');
      //debugPrint('body: $body');
    }
}