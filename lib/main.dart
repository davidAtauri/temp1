import 'package:flutter/material.dart';

void main(){
  runApp(MyApp() );
}



class MyApp extends StatelessWidget {
  var ms = [
    {'text': "Plátanos"},
    {'text': 23},
    {'text': "Manzanas"},
    {'text': "Melones"}
  ];
  Container _fila( String cadena ){
    return Container(

        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Text(" > " + cadena)
    );
  }

  @override
  Widget build(BuildContext context) {
    //comentario
    return MaterialApp(
      title: 'Flutter  demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            for(var m in ms)  _fila(m["text"].toString())
          ]
        ),
      ),
    );
  }
}