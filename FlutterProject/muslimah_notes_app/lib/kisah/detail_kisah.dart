
import 'package:flutter/material.dart';
import '../model/kisah.dart';

class DetailKisah extends StatelessWidget {
  final Kisah title;

  const DetailKisah({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text(
          title.title,
          style: TextStyle(color: Colors.white, fontFamily: "Minnie"),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey[500],
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title.kisah,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              color: Colors.grey[700],
                              fontFamily: "Poppins"),
                          textAlign: TextAlign.justify,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
