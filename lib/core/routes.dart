import 'package:flutterchallange/core/mainmenu.dart';
import 'package:flutterchallange/presentation/pages/feat_screen.dart';
import 'package:flutterchallange/presentation/pages/home_screen.dart';
import 'package:flutterchallange/presentation/pages/login_screen.dart';
import 'package:flutterchallange/presentation/pages/profile_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String mainMenu = "/main-menu";

  static const String login = "/login";

  static const String home = '/home';
  static const String feat = '/feat';
  static const String profile = '/Profile';

  static final pages = [
    GetPage(
      name: mainMenu, 
      page: ()=> MainMenu()
    ),
    GetPage(
      name: login, 
      page: ()=> LoginScreen()
    ),
    GetPage(
      name: home, 
      page: ()=> HomeScreen()
    ),
    GetPage(
      name: feat, 
      page: ()=> FeatScreen()
    ),
    GetPage(
      name: profile, 
      page: ()=> ProfileScreen()
    ),
  ];
}