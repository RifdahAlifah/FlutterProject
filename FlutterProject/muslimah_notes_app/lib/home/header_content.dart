import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: BackgroundClip(),
          child: Container(
            height: 250.0,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/try_bg.png'),
                    fit: BoxFit.fill)
                //     gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   colors: [Colors.pink[400], Colors.pink[200]],
                // )
                ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //     child: Image(
              //         image: AssetImage('assets/img/ic_logo_only.png'), width: 100.0, height: 100.0,),
              // ),
              Container(
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/img/ic_logo_only.png'),
                      width: 60.0,
                      height: 60.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Muslimah Journey',
                      style: TextStyle(
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.grey[900],
                            offset: Offset(5.0, 5.0),
                          )
                        ],
                        fontFamily: ("Minnie"),
                        color: Colors.red[100],
                      ),
                    ),
                    Text(
                      '"Menggapai Kebahagiaan Muslimah\ndi atas Jalan Salaful Ummah"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontFamily: "Poppins"),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BackgroundClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);

    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 20);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
