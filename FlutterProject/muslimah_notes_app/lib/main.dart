
import 'package:flutter/material.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/intro/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SplashScreen(),
    );
  }
}

