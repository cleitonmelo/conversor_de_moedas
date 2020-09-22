import 'package:flutter/material.dart';

class HomeController{

  static final realController = TextEditingController();
  static final dolarController = TextEditingController();
  static final euroController = TextEditingController();

  static void realChanged(String text){
    double real = double.parse(text);
  }

  static void dolarChanged(String text){
    double dolar = double.parse(text);
  }

  static void euroChanged(String text){
    double euro = double.parse(text);
  }

  double convertValue(double value, double divisor){
    return (value/divisor);
  }

}