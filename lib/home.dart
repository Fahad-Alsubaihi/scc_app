
import 'dart:ui';
import 'package:flutter/material.dart';
import 'tasks.dart';
import 'main.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));



class WaveShape1 extends CustomClipper<Path> {
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, height);
    //p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, 0);
    p.cubicTo(100 , 140, 130, 70, 130 , 60);
    p.lineTo(width, 0);

    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}


class WaveShape2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, 135);
    //p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, 0);
    p.cubicTo(150 , 20, 250, 150, 360 , 0);
    p.lineTo(width, 0);

    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class WaveShape3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, height);
    //p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, 0);
    p.cubicTo(100 , 160, 140, 120, 110 , 70);
    p.lineTo(width, 0);

    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class WaveShape4 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, 100);
    //p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, 0);
    p.cubicTo(100 , 80, 220, 160, 360 , 0);
    p.lineTo(width, 0);

    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class WaveShape5 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, height);
    //p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, 0);
    p.cubicTo(30 , 10, 360, 120, 360 , 0);
    p.lineTo(width, 0);

    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body:
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipPath(
              clipper: WaveShape5(),
              child: Container(
                width: 360,
                height: 50,
                color: Colors.blueAccent,
              ),
            ),
            ClipPath(
              clipper: WaveShape4(),
              child: Container(
                width: 360,
                height: 125,
                color: Colors.blueAccent[100],
              ),
            ),
            ClipPath(
              clipper: WaveShape3(),
              child: Container(
                width: 360,
                height: 145,
                color: Colors.blueAccent,
              ),
            ),
            ClipPath(
              clipper: WaveShape1(),
              child: Container(
                width: 360,
                height: 145,
                color: Colors.blue[800],
              ),
            ),
            ClipPath(
              clipper: WaveShape2(),
              child: Container(
                width: 360,
                height: 125,
                color: Colors.blue[800],
              ),
            ),
            Positioned(
              left: 15,
              top: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Logo.jpg'),
                radius: 40,
              ),
            ),
            Positioned(
              top: 25,
              left: 105,
              child: Text(
                'النادي الثقافي الاجتماعي',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Positioned(
              left: 320,
              top: 23,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/SCC.JPG'),
                radius: 40,
              ),
            ),
            Positioned(
              top: 155,
              left: 30,
              child: Container(
                //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(1),
                    spreadRadius: 10,
                    blurRadius: 0,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], borderRadius: BorderRadius.all(Radius.circular(10))),
                //margin: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
                width: 350,
                height: 90,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 91.0,
                        height: 91.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: AssetImage('assets/MAQ.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.white,
                            //width: 6.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 100,
                      child: Text(
                        "محمد المطلق",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          decoration: TextDecoration.none,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      left: 10,
                      child: Text(
                        "النقاط : 30",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    Positioned(
                      top: -7,
                      left: 0,
                      child: Image(
                        image: AssetImage(
                            'assets/hhh.jpg'),
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),

                    ////////////////////////////////////////////////////
                  ],
                ),
              ),
            ),
            Positioned(
              top: 110,
              right: -25,
              child: Text(
                'الاعضاء المميزون',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Positioned(
              top: 257,
              right: -10,
              child: Text(
                'الفعاليات',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Positioned(
                top: 290,
                left: 80,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0)),
                          image: DecorationImage(
                            image: AssetImage('assets/mus.jpg'),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(1),
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        //margin: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
                        width: 270,
                        height: 220,
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(1),
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        //margin: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
                        width: 270,
                        height: 90,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 15,
                              child: Text(
                                "جلسة حوارية في الذكاء الاصطناعي",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              right: 10,
                              child: Icon(Icons.date_range),
                            ),
                            Positioned(
                              top: 33,
                              right: 38,
                              child: Text(
                                " NOV 9 | الاربعاء",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                            ////////////////////////////////////////////////////
                            Positioned(
                              top: 31,
                              left: 70,
                              child: Icon(Icons.access_time),
                            ),
                            Positioned(
                              top: 36,
                              left: 15,
                              child: Text(
                                " 8:00 PM",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                            ////////////////////////////////////////////
                            Positioned(
                              bottom: 8,
                              left: 70,
                              child: Icon(Icons.location_on),
                            ),
                            Positioned(
                              bottom: 14,
                              left: 33,
                              child: Text(
                                "BIAC",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 7,
                              right: 12,
                              child: Container(
                                //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue,
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                                //margin: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
                                padding: EdgeInsets.only(top: 1),
                                width: 108,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    "انظم الآن",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Cairo',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),

          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => profile()),
                            (Route<dynamic> route) => false,
                      );
                    };
                  }, // Image tapped
                  splashColor: Colors.white10, // Splash color over image
                  child: Image(
                    fit: BoxFit.cover, // Fixes border issues
                    width: 50,
                    height: 50,
                    image: AssetImage(
                        'assets/user.png',
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => tasks()),
                            (Route<dynamic> route) => false,
                      );
                    };
                  }, // Image tapped
                  splashColor: Colors.white10, // Splash color over image
                  child: Image(
                    fit: BoxFit.cover, // Fixes border issues
                    width: 50,
                    height: 50,
                    image: AssetImage(
                      'assets/medal.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),








      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: SafeArea(
          child: FittedBox(
            child: FloatingActionButton(onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                    (Route<dynamic> route) => false,
              );
            },
              child: Icon(
                Icons.home_outlined,
                size: 40,
              ),
            ),
          ),
        ),
        /*child: FittedBox(
            child: FloatingActionButton(onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                    (Route<dynamic> route) => false,
              );
            },
              child: Icon(
                Icons.home_outlined,
                size: 40,
              ),
            ),
          ),*/
      ),
    );
  }
}

/*

Image(
image: AssetImage(
'assets/user.png'),
width: 50,
height: 0,
),


InkWell(
onTap: () {}, // Image tapped
splashColor: Colors.white10, // Splash color over image
child: Ink.image(
fit: BoxFit.cover, // Fixes border issues
width: 100,
height: 100,
image: AssetImage(
'assets/cat.jpg,
),
),
)


Image(
image: AssetImage(
'assets/medal.png'),
width: 45,
height: 45,
),


GestureDetector(
onTap: () {
Navigator.pushAndRemoveUntil(
context,
MaterialPageRoute(builder: (context) => profile()),
(Route<dynamic> route) => false,
);
}, // Image tapped
child: Image.asset(
'assets/user.png',
fit: BoxFit.cover, // Fixes border issues
width: 80.0,
height: 80.0,
),
),

*/
