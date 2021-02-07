import 'package:flutter/material.dart';

void main(){
  runApp(
      new MaterialApp(
        title: "My Apps",
        home: new Myapp(),
      )
  );
}


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("My Apps"),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Image.asset('assets/image01.jpeg')
        )
    );
  }
}