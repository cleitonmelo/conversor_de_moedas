import 'package:flutter/material.dart';

class Waiting{

  static Widget iconWaiting(){
    return Center(
        child: Icon(Icons.autorenew, color: Colors.white, size: 100.0),
      );
  }

  static Widget textWaiting(String text){
    return Center(
      child: Text(text),
    );
  }
  
}