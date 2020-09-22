import 'package:flutter/material.dart';

class BuilderText{

  Widget textField(String label, String prefix, TextEditingController controller){
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber),
        border: OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: TextStyle(color: Colors.amber, fontSize: 25.0),
      controller: controller,
    );
  }
}
