
import 'package:flutter/material.dart';

class Error{

  static Widget iconError(){
    return Center(
        child: Icon(Icons.error_outline, color: Colors.white),
      );
  }

  static Widget textError(String text){
    return Center(
      child: Text(text),
    );
  }

}