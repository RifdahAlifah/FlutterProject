import 'package:flutter/material.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/alquran/model_alquran.dart';
import 'package:muslimah_notes_app/utils/custom_widget.dart';

class DetailScreen extends StatelessWidget {
  final Artikel artikel;

  const DetailScreen({@required this.artikel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(artikel.photo, width: 360.0, height: 180.0, fit: BoxFit.cover),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                artikel.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontFamily: "Minnie"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.drive_file_rename_outline, color: Colors.grey[700]),
                      SizedBox(height: 8.0),
                      Text(artikel.author, style: authorTitle,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today_rounded, color: Colors.grey[700]),
                      SizedBox(height: 8.0),
                      Text(artikel.date, style: authorTitle)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                artikel.detail,textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0, fontFamily: "Poppins"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
