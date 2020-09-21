import 'package:flutter/material.dart';
import 'package:conversor_de_moedas/service/api.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiRequest api = ApiRequest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
              return Center(
                child: Icon(Icons.autorenew, color: Colors.white, size: 100.0),
              );
            default:
              if(snapshot.hasError){
                return Center(
                  child: Icon(Icons.error_outline, color: Colors.white,),
                );
              }else{
                return Container(
                  color: Colors.green,
                );
              }
          }
        },
      ),
    );
  }
}
