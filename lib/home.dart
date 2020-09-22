import 'package:conversor_de_moedas/builder/builder.dart';
import 'package:conversor_de_moedas/controller/home_controller.dart';
import 'package:conversor_de_moedas/util/currencies.dart';
import 'package:conversor_de_moedas/view/default.dart';
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
  DefaultView view = DefaultView();
  Currencies currencies = Currencies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Conversor \$"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: api.getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Waiting.circularWaiting();
            default:
              if(snapshot.hasError){
                return Error.iconError();
              }else{
                currencies.setData(snapshot.data);
                return view.interfaceSuccess(currencies);
              }
          }
        },
      ),
    );
  }
}
