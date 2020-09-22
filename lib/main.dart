import 'package:flutter/material.dart';
import 'package:conversor_de_moedas/home.dart';

void main() async {
  runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white
      ),
    ));
}