import 'package:conversor_de_moedas/controller/home_controller.dart';
import 'package:conversor_de_moedas/util/currencies.dart';
import 'package:flutter/material.dart';

class BuilderText{

  Widget textNumberField(String label, String prefix, TextEditingController controller, Function function){
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
      onChanged: function,
    );
  }
}
