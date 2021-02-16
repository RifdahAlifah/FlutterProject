import 'dart:async';
import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreeState createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            child: Image.asset('assets/img/ic_logo.png')),
      ),
    );
  }

  splashScreen() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement( //biar ga back lagi
          MaterialPageRoute(builder: (_) {
            return HomeScreen();
          }));
    });
  }
}
