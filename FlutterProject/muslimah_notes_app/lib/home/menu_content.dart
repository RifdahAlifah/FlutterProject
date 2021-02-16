import 'package:flutter/material.dart';
import 'package:muslimah_notes_app/fiqih/list_content_fiqih.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/alquran/list_content_alquran.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/hijab/list_content_hijab.dart';
import 'file:///C:/Users/Rifdah%20Alifah/Documents/Flutter/FlutterProject/muslimah_notes_app/lib/tazkiyatun/list_content_tazkiyatun.dart';

import '../utils/custom_widget.dart';

class ContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 18.0, left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Artikel Muslimah',
                    style: styleTitle, textAlign: TextAlign.left,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ContentAlquran();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'alquran',
                                  child: Image(
                                    image:
                                    AssetImage('assets/img/ic_quran.png'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'secondAlquran',
                                  child: Image(
                                    image:
                                    AssetImage('assets/img/ic_quran.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Landasan Agama', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Al-qur`an & Hadits',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ContentFiqih();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'fiqih',
                              child: Image(
                                image: AssetImage('assets/img/ic_mosque.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Fiqih', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                          'Ibadah & Syariah',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ContentHijab();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'hijab',
                              child: Image(
                                image: AssetImage('assets/img/ic_hijab.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Hijab Syar`i', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child:
                                      Text('Adab Berpakaian', style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ContentTazkiyatun();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'tazkiyatunnafs',
                              child: Image(
                                image: AssetImage('assets/img/ic_prayer.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Tazkiyatun Nafs', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child:
                                      Text('Penyucian Jiwa', style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
