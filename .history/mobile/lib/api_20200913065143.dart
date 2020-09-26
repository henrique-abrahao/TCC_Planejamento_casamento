import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tcc/Modals/userModal.dart';

import 'Modals/photoModal.dart';

class Api {
  Future<User> login({String email, String pass}) async {
    final http.Response response =
        await http.post('http://192.168.15.200:3333/login',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{'email': email, 'pass': pass}));

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Usuario Invalido');
    }
  }

  Future<List> getAllPhoto() async {
    http.Response response = await http.get('http://192.168.15.200:3333/photo');
    var responseJson = json.decode(response.body);

    return (responseJson).map((p) => Photo.fromJson(p)).toList();
  }
}
