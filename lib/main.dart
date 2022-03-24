
import 'dart:ui';
import 'package:flutter/material.dart';
import 'home.dart';
import 'tasks.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


void main() => runApp(MaterialApp(
  home: Home(),
));



class WaveShape1 extends CustomClipper<Path> {
  @override
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
            top: 30,
            left: 10,
            child: Image(
              image: AssetImage(
                  'assets/Logo.jpg'),
              width: 70.0,
              height: 70.0,
            ),
          ),
          Positioned(
            top: 25,
            left: 150,
            child: Text(
              'My Accounts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 30,
            child:Container(
              //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(1),
                    spreadRadius: 10,
                    blurRadius: 0,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              //margin: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
              width: 350,
              height: 200,
              //color: Colors.grey[100],
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "mohammed almotlaq",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "441103283",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.face),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "0537485947",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.phone),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "toto@hotmail.com",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.mode_edit),
                      Text(
                        "tasks : 5",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "point : 30",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            right: -40,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  image: AssetImage('assets/MAQ.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(
                  color: Colors.white,
                  width: 6.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 162,
            left: 25,
            child: Image(
              image: AssetImage(
                  'assets/hhh.jpg'),
              width: 70.0,
              height: 70.0,
            ),
          ),
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
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                   Positioned(
                      child: Image(
                        image: AssetImage(
                            'assets/user.png'),
                        width: 0,
                        height: 0,
                      ),
                    ),
                    Positioned(
                      left: -165,
                      bottom: -23,
                      child: Image(
                        image: AssetImage(
                            'assets/user.png'),
                        width: 45,
                        height: 45,
                      ),
                    ),
                    Positioned(
                      left: 120,
                      bottom: -23,
                      child: Image(
                        image: AssetImage(
                            'assets/medal.png'),
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
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
          child: FittedBox(
            child: FloatingActionButton(onPressed: () {},
              child: Icon(
              Icons.home_outlined,
              size: 40,
            ),
            ),
          ),
        )
    );
  }
}
