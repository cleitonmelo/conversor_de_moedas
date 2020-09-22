import 'package:flutter/material.dart';
import 'package:conversor_de_moedas/home.dart';

void main() async {
  runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
        hintColor: Colors.white,
        primaryColor: Colors.amber,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber)
            ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow)
            ),
          hintStyle: TextStyle(color: Colors.yellow),
        )
      ),
    ));
}