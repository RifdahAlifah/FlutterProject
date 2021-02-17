import 'package:flutter/material.dart';

import 'all_kisah_list.dart';
import '../utils/custom_widget.dart';
import '../model/kisah.dart';
import 'detail_kisah.dart';

class ListKisah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      left: 18.0, right: 18.0, bottom: 6.0, top: 6.0),
                  child: Text('Ummahatul Mukminin', style: styleTitle)),
            ],
          ),
          Container(
            height: 300.0,
            child: ListView(
                scrollDirection: Axis.vertical,
                children: dataListKisah.map((list) {
                  return Container(
                    height: 50,
                    margin:
                    EdgeInsets.only(left: 18.0, right: 18.0, bottom: 8.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[500]))),
                    child: RaisedButton(
                      elevation: 0,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            transitionsBuilder: (context, animation, animationTime, child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,);
                            },
                            pageBuilder: (context, animation, animationTime){
                              return DetailKisah(title: list);
                            }
                        ));
                      },
                      child: ListTile(
                        title: Text(
                          list.title,
                          style: listTitle,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                }).toList()),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[700]))),
            child: RaisedButton(
              elevation: 0,
              color: Colors.grey[700],
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 30),
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
                        pageBuilder: (context, animation, animationTime){
                          return AllKisahList();
                        }
                    ));
              },
              child: Container(
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Lihat Semua',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
