import 'package:conversor_de_moedas/helpers/builder.dart';
import 'package:conversor_de_moedas/helpers/convert.dart';
import 'package:flutter/material.dart';

class HomeContent {
  TextEditingController realController = TextEditingController();
  TextEditingController dolarController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  Currencies convert;

  HomeContent(quotations) {
    this.convert = Currencies(quotations);
  }

  Widget build() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.monetization_on, size: 150.0, color: Colors.amber),
          BuilderText.textNumberField("Reais",
              prefix: Currencies.PREFIX_REAIS,
              controller: realController,
              handleChange: _realOnChanded),
          Divider(),
          BuilderText.textNumberField("Dolares",
              prefix: Currencies.PREFIX_DOLAR,
              controller: dolarController,
              handleChange: _dolarOnChanded),
          Divider(),
          BuilderText.textNumberField("Euro",
              prefix: Currencies.PREFIX_EURO,
              controller: euroController,
              handleChange: _euroOnChanded)
        ],
      ),
    );
  }

  void _clearAll() {
    realController.text = "";
    dolarController.text = "";
    euroController.text = "";
  }

  void _realOnChanded(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double value = double.parse(text);
    dolarController.text = convert.realToDolar(value).toStringAsPrecision(4);
    euroController.text = convert.realToEuro(value).toStringAsPrecision(4);
  }

  void _dolarOnChanded(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double value = double.parse(text);
    realController.text = convert.dolarToReal(value).toStringAsPrecision(4);
    euroController.text = convert.dolarToEuro(value).toStringAsPrecision(4);
  }

  void _euroOnChanded(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double value = double.parse(text);
    realController.text = convert.euroToReal(value).toStringAsPrecision(4);
    dolarController.text = convert.euroToDolar(value).toStringAsPrecision(4);
  }
}
