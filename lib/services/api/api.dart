import 'dart:convert';

import 'package:flutter_application_8/model/model_class.dart';
import 'package:http/http.dart' as http;

class ApiCalls {
  String kBaseurl = "";
  // List<ModelClass> listModel = [];
  Future<List<ModelClass>> getApi() async {
    String kBaseurl = "https://jsonplaceholder.typicode.com/photos";
    try {
      Uri uri = Uri.parse(kBaseurl);
      var response = await http.get(uri);

      var data = modelClassFromJson(response.body);

      print(data.length);
      // var data = ;

      return data;
    } catch (e) {
      return <ModelClass>[];
    }
  }
}
