import 'package:conversor_de_moedas/model/quotations.dart';
import 'package:conversor_de_moedas/pages/views/home/content.dart';
import 'package:conversor_de_moedas/pages/views/home/error.dart';
import 'package:conversor_de_moedas/pages/views/home/loading.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    List loadingStates = [ConnectionState.none, ConnectionState.waiting];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Conversor \$"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: fetchQuotations(),
        builder: (context, snapshot) {
          if(loadingStates.contains(snapshot.connectionState)){
            return HomeLoading.circularWaiting();
          }
          if(snapshot.hasError){
            return HomeError.iconError();
          }
          return HomeContent(snapshot.data).build();
          },
      ),
    );
  }
}
