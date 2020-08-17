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
                height: 600,
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
            borderRadius: BorderRadius.circular(40),
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
          Container(
            margin: EdgeInsets.only(left: 12),
            child: Column(
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
                      color: Colors.black,
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
                    FaIcon(
                      FontAwesomeIcons.accusoft,
                      color: Colors.black,
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
            ),
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


