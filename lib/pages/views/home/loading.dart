import 'package:flutter/material.dart';

class HomeLoading{

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

  static Widget circularWaiting(){
    return Center(
        child: CircularProgressIndicator(),
    );
  }
  
}