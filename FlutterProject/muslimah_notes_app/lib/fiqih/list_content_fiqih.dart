import 'package:flutter/material.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/fiqih/detail_article_fiqih.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/fiqih/model_fiqih.dart';
import 'package:muslimah_notes_app/utils/custom_widget.dart';


class ContentFiqih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("Fiqih", style: TextStyle(fontFamily: "Minnie"),),
      ),
      body: Container(
        color: Colors.red[100],
        child: ListView(
            children: dataListArtikelFiqih.map((place) {
              return FlatButton(
                onPressed: () {Navigator.push(context, PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    transitionsBuilder: (context, animation, animationTime, child){
                      animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                      return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child,);
                    },
                    pageBuilder: (context, animation, animationTime) {
                      return DetailScreenFiqih(artikelfiqih: place,);
                    }));
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(place.photo, width: 360.0, height: 180.0, fit: BoxFit.cover,),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(place.title, textAlign: TextAlign.center ,style:  styleTitle),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(place.description, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(fontFamily: "Poppins")),
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