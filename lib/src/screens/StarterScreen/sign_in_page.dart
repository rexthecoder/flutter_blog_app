import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_project/src/Router/router.gr.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE8FF),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                child: Container(
                  padding: EdgeInsets.only(left: 10, top: 80, right: 20),
                  height: 280.0,
                  width: double.infinity,
                  alignment: Alignment.center,
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
                  child: NeumorphicText(
                    "Log In",
                    style: NeumorphicStyle(
                      disableDepth: true,
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                    ),
                    // style: TextStyle(
                    //   color: Color(0xffE6D2F5),
                    //   fontSize: 27,
                    //   fontFamily: "Futura",
                    // ),
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
                    Neumorphic(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      style: NeumorphicStyle(
                        depth: NeumorphicTheme.embossDepth(context),
                        boxShape: NeumorphicBoxShape.stadium(),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "EMAIL",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 20),
                            hintStyle: TextStyle(
                              fontFamily: "Futura",
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Neumorphic(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      style: NeumorphicStyle(
                        depth: NeumorphicTheme.embossDepth(context),
                        boxShape: NeumorphicBoxShape.stadium(),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "PASSWORD",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 20),
                            hintStyle: TextStyle(
                              fontFamily: "Futura",
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                width: 200.0,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF5A00DB),
                        Color(0xFF7E0096),
                      ],
                    )),
                child: FlatButton(
                  child: Text(
                    "LOG IN",
                    style: TextStyle(fontFamily: "Futura", color: Colors.white),
                  ),
                  onPressed: () async{
                     ExtendedNavigator.of(context).push(Routes.homePage);
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () async{
                  ExtendedNavigator.of(context).push(Routes.signUp);
                },
                child: Container(
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                            color: Color(0xff9582A7),
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w800,
                            fontSize: 16.0),
                        children: [
                          TextSpan(
                            text: "SIGN UP",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff9582A7),
                              fontFamily: "Futura",
                            ),
                          )
                        ]),
                  ),
                ),
              )
            ],
          ),
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
