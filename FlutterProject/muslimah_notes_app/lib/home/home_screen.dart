import 'package:flutter/material.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/kisah/list_kisah.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/home/menu_content.dart';

import 'header_content.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContent(),
            ContentMenu(),
            ListKisah()
          ],
        ),
      ),
    );
  }
}



