import 'package:flutter/material.dart';
import 'package:muslimah_notes_app/tazkiyatun/detail_article_tazkiyatun.dart';
import 'package:muslimah_notes_app/tazkiyatun/model_tazkiyatun.dart';
import 'package:muslimah_notes_app/utils/custom_widget.dart';

class ContentTazkiyatun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text(
          "Tazkiyatun Nafs",
          style: TextStyle(fontFamily: "Minnie"),
        ),
      ),
      body: Container(
        color: Colors.red[100],
        child: ListView(
            children: dataListArtikelTazkiyatun.map((place) {
          return FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      transitionsBuilder:
                          (context, animation, animationTime, child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.elasticOut);
                        return ScaleTransition(
                          scale: animation,
                          alignment: Alignment.center,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, animationTime) {
                        return DetailScreenTazkiyatun(
                          artikeltazkiyatun: place,
                        );
                      }));
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    place.photo,
                    width: 360.0,
                    height: 180.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(place.title,
                        textAlign: TextAlign.center, style: styleTitle),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(place.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Poppins")),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}
