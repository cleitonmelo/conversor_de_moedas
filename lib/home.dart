import 'package:conversor_de_moedas/builder/builder.dart';
import 'package:conversor_de_moedas/controller/home_controller.dart';
import 'package:conversor_de_moedas/util/currencies.dart';
import 'package:conversor_de_moedas/view/error.dart';
import 'package:conversor_de_moedas/view/waiting.dart';
import 'package:flutter/material.dart';
import 'package:conversor_de_moedas/service/api.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiRequest api = ApiRequest();
  Currencies currencies = Currencies();
  BuilderText builder = BuilderText();

  double dolar;
  double euro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor \$"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: FutureBuilder(
        future: api.getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Waiting.iconWaiting();
            default:
              if(snapshot.hasError){
                return Error.iconError();
              }else{
                dolar = currencies.getBuyDolar(snapshot.data);
                euro = currencies.getBuyEuro(snapshot.data);
                return SingleChildScrollView(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Icons.monetization_on, size: 150.0, color: Colors.amber),
                      builder.textField("Reais", currencies.getPrefixReais(), HomeController.realController),
                      Divider(),
                      builder.textField("Dolares", currencies.getPrefixDolar(), HomeController.dolarController),
                      Divider(),
                      builder.textField("Euro", currencies.getPrefixEuro(), HomeController.euroController),
                    ],
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
