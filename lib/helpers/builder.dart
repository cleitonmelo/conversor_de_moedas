import 'package:flutter/material.dart';

class BuilderText {
  static Widget textNumberField(String label,
      {String prefix,
      TextEditingController controller,
      Function handleChange}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber),
        border: OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: TextStyle(color: Colors.amber, fontSize: 25.0),
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onChanged: handleChange,
    );
  }
}
