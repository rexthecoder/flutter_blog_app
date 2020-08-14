import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE8FF),
      body: Container(
        child: Column(
          children: [
            ClipPath(
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 40, right: 20),
                height: 280.0,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Color(0xFF6200CA), BlendMode.color),
                        image: AssetImage("assets/images/particles.gif"),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF6200CA),
                        Color(0xFF7C009C),
                      ],
                    )),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: Color(0xffE6D2F5),
                    fontSize: 27,
                    fontFamily: "Futura",
                  ),
                ),
              ),
              clipper: BottomWaveClipper(),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFE8FF),
                          spreadRadius: 2,
                          offset: Offset(0, 12))
                    ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "EMAIL",
                          hintStyle: TextStyle(
                            fontFamily: "Futura",
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "PASSWORD",
                        hintStyle: TextStyle(
                          fontFamily: "Futura",
                        )),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  NeuTextField(
                    decoration: InputDecoration(
                      hintText: "CONFIRM PASSWORD",
                      hintStyle: TextStyle(
                        fontFamily: "Futura",
                      ),
                    ),
                  )
                  // TextField(
                  //   decoration: InputDecoration(
                  //       hintText: "CONFIRM PASSWORD",
                  //       hintStyle: TextStyle(
                  //         fontFamily: "Futura",
                  //       )),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
