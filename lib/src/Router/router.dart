import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_blog_project/src/screens/StarterScreen/sign_in_page.dart';
import 'package:flutter_blog_project/src/screens/StarterScreen/sign_up_page.dart';
import 'package:flutter_blog_project/src/screens/dashboard/home_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: SignIn, initial: true, name: "InitialRoute"),
    CupertinoRoute(page: SignUp),
    CupertinoRoute(page: HomePage),
    //This route returns result of type [bool]
    // CustomRoute<bool>(page: LoginScreen, transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
)
class $Router {}
