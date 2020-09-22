import 'package:conversor_de_moedas/builder/builder.dart';
import 'package:conversor_de_moedas/controller/home_controller.dart';
import 'package:conversor_de_moedas/util/currencies.dart';
import 'package:flutter/material.dart';

class DefaultView {
  BuilderText _builderText = BuilderText();
  Currencies _currencies = Currencies();

  double dolar;
  double euro;

  Widget interfaceSuccess(Currencies currencies) {
    dolar = currencies.getDolar();
    euro = currencies.getEuro();
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.monetization_on, size: 150.0, color: Colors.amber),
          _builderText.textNumberField(
              currencies.getTypeReais(),
              currencies.getPrefixReais(),
              HomeController.realController,
              _realOnChanded),
          Divider(),
          _builderText.textNumberField(
              currencies.getTypeDolar(),
              currencies.getPrefixDolar(),
              HomeController.dolarController,
              _dolarOnChanded),
          Divider(),
          _builderText.textNumberField(
              currencies.getTypeEuro(),
              currencies.getPrefixEuro(),
              HomeController.euroController,
              _euroOnChanded),
        ],
      ),
    );
  }

  void _realOnChanded(String text) {
    if(text.isEmpty) {
      _clearAll();
      return;
    }
    double real = double.parse(text);
    HomeController.dolarController.text = (real / dolar).toStringAsPrecision(4);
    HomeController.euroController.text = (real / euro).toStringAsPrecision(4);
  }

  void _dolarOnChanded(String text) {
    if(text.isEmpty) {
      _clearAll();
      return;
    }
    double dolar = double.parse(text);
    HomeController.realController.text = (dolar * this.dolar).toStringAsPrecision(4);
    HomeController.euroController.text = (dolar * this.dolar / euro).toStringAsPrecision(4);
  }

  void _euroOnChanded(String text) {
    if(text.isEmpty) {
      _clearAll();
      return;
    }
    double euro = double.parse(text);
    HomeController.realController.text = (euro * this.euro).toStringAsPrecision(4);
    HomeController.dolarController.text = (euro * this.euro / dolar).toStringAsPrecision(4);
  }

  void _clearAll(){
    HomeController.realController.text = "";
    HomeController.dolarController.text = "";
    HomeController.euroController.text = "";
  }
}
