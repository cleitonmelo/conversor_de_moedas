import 'package:flutter/material.dart';

class HomeController{

  static final realController = TextEditingController();
  static final dolarController = TextEditingController();
  static final euroController = TextEditingController();

  void realChanged(String text){
    print(text);
  }

}