import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tridimensional_drawer/tridimensional_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TridimensionalDrawerController controller =
      TridimensionalDrawerController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return TridimensionalDrawer(
      controller: controller,
      mainPage: SafeArea(
          child: MainPage(
        controller: controller,
      )),
      drawer: CustomDrawer(),
      backgroundPage: GestureDetector(
        onTap: () => controller.close(),
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final TridimensionalDrawerController controller;

  const MainPage({Key key, this.controller}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE8FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Text("Discover",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Futura",
                  fontSize: 18,
                  fontWeight: FontWeight.w800)),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 18.0),
          child: GestureDetector(
            onTap: () {
              widget.controller.open();
            },
            child: FaIcon(
              FontAwesomeIcons.bars,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              ),
              SizedBox(
                width: 15.0,
              ),
              FaIcon(
                FontAwesomeIcons.search,
                color: Colors.black,
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        // controller: _controller,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Featured",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Futura",
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      width: 100.0,
                      height: 40,
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
                          "SIGN UP",
                          style: TextStyle(
                              fontFamily: "Futura", color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: listTile(),
                      );
                    }),
              ),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 300.0,
                    // width: 350.0,
                    foregroundDecoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.4)),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/crush.jpg'),
                    )),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      child: Text("Editor's Pick",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  Container(
                    width: 280,
                    margin: EdgeInsets.only(top: 120),
                    child: Text(
                        "The programmer who can code the world, she has done it again",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                            fontSize: 18,

                            // package: "Text",
                            fontWeight: FontWeight.w700)),
                  ),
                  Positioned(
                    top: 270,
                    left: 10,
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Container(
                            child: Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Futura",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800))),
                        SizedBox(
                          width: 8.0,
                        ),
                        FaIcon(
                          FontAwesomeIcons.commentAlt,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Container(
                            child: Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Futura",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800))),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Technology",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Futura",
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      width: 120.0,
                      height: 40,
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
                      child: Row(
                        children: [
                          FlatButton(
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "Futura",
                                  color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                          FaIcon(
                            FontAwesomeIcons.arrowCircleRight,
                            color: Colors.black26,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 450,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.only(left: 10, bottom: 20),
                          // height: 300,
                          width: 250,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: Container(
                                  height: 120,
                                  width: 150,
                                  alignment: Alignment.center,
                                  child: Image(
                                    image: AssetImage("assets/images/lap.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 4.0),
                                    child: Text("10th, Dec 2020",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontFamily: "Futura",
                                            fontSize: 13,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                      width: 170,
                                      child: Text(
                                          "The below-given snippet will allow showing 2 grid side by side on the body area.",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontFamily: "Futura",
                                              fontSize: 14,

                                              // package: "Text",
                                              fontWeight: FontWeight.w700))),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.black26,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Container(
                                          child: Text("1",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: "Futura",
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w800))),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.commentAlt,
                                        color: Colors.black26,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Container(
                                          child: Text("1",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: "Futura",
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w800))),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),

              // TODO: another section
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9441C5),
                      Color(0xff634AE3),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text("Talents to Read",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                    ),
                     SizedBox(
                      height: 20,
                    ),
              //       Container(
              //   height: 600,
              //   child: ListView.builder(
              //       itemCount: 5,
              //       shrinkWrap: true,
              //       physics: ClampingScrollPhysics(),
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return InkWell(
              //           onTap: () {},
              //           child:  card(),
              //         );
              //       }),
              // ),
                   
                  ],
                ),
              )
              // ListView(
              //     children: [Expanded(child: Container(child: listTile()))])
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff9441C5),
          child: FaIcon(
            FontAwesomeIcons.battleNet,
            color: Colors.black,
          ),
          onPressed: () {}),
    );
  }

  Container card() {
    return Container(
                    height: 280,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    // width: 100,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(left: 8.0, top: 20.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle),
                              child: Text("R",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Futura",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: FaIcon(
                                FontAwesomeIcons.ellipsisV,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rexford Asamosh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Futura",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800)),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text("Flutter developer",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: "Futura",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800))
                            ]),
                        Divider(
                          indent: 10,
                          endIndent: 120,
                          thickness: 2,
                          color: Colors.black,
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text("32.k",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Futura",
                                            fontSize: 17,
                                            fontWeight: FontWeight.w800)),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text("Followers",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontFamily: "Futura",
                                            fontSize: 13,
                                            fontWeight: FontWeight.w800))
                                  ]),
                              Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(right: 8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xff634AE3),
                                      shape: BoxShape.circle),
                                  child: FaIcon(
                                    FontAwesomeIcons.userShield,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
  }

  Widget listTile() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 300,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 150,
              width: 200,
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("assets/images/lap.png"),
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Flutter developer",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Futura",
                        fontSize: 13,
                        fontWeight: FontWeight.w800)),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                  width: 200,
                  child: Text(
                      "The below-given snippet will allow showing 2 grid side by side on the body area.",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Futura",
                          fontSize: 14,

                          // package: "Text",
                          fontWeight: FontWeight.w700))),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.black26,
                    size: 20,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      child: Text("1",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Futura",
                              fontSize: 10,
                              fontWeight: FontWeight.w800))),
                  SizedBox(
                    width: 8.0,
                  ),
                  FaIcon(
                    FontAwesomeIcons.commentAlt,
                    color: Colors.black26,
                    size: 20,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                      child: Text("1",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Futura",
                              fontSize: 10,
                              fontWeight: FontWeight.w800))),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 120, top: 70),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff634AE3),
                Color(0xff9441C5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    //  padding: EdgeInsets.only(right: 120),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Text("R",
                        style: TextStyle(
                            color: Color(0xff634AE3),
                            fontFamily: "Futura",
                            fontSize: 17,
                            fontWeight: FontWeight.w800)),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(children: [
                    Text("Rexford Asamosh",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                            fontSize: 17,
                            fontWeight: FontWeight.w800)),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text("Flutter developer",
                        style: TextStyle(
                            color: Colors.white60,
                            fontFamily: "Futura",
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ])
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Discover",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                            fontSize: 18,
                            fontWeight: FontWeight.w800)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      child: Text("Acticles",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      child: Text("Draft",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      child: Text("Categories",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      child: Text("Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                  SizedBox(
                    height: 100.0,
                  ),
                  Container(
                      child: Text("Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      child: Text("About",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                ],
              ),
              SizedBox(
                height: 150.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  FaIcon(
                    FontAwesomeIcons.signOutAlt,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                      child: Text("Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18,
                              fontWeight: FontWeight.w800))),
                ],
              ),
            ],
          )),
    );
  }
}
