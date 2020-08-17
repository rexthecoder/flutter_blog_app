// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../screens/StarterScreen/sign_in_page.dart';
import '../screens/StarterScreen/sign_up_page.dart';
import '../screens/dashboard/home_screen.dart';

class Routes {
  static const String InitialRoute = '/';
  static const String signUp = '/sign-up';
  static const String homePage = '/home-page';
  static const all = <String>{
    InitialRoute,
    signUp,
    homePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.InitialRoute, page: SignIn),
    RouteDef(Routes.signUp, page: SignUp),
    RouteDef(Routes.homePage, page: HomePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SignIn: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignIn(),
        settings: data,
      );
    },
    SignUp: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUp(),
        settings: data,
      );
    },
    HomePage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
  };
}
