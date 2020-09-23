import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Api{

  static const KEY = "b61ad82e";
  static const BASE_URL = "https://api.hgbrasil.com/finance";

  String getUrl(){
    return "$BASE_URL?key=$KEY";
  }

  Future<Map> getData() async{
    http.Response response = await http.get(getUrl());
    return json.decode(response.body);
  }
}
