import 'package:flutterchallange/core/mainmenu.dart';
import 'package:flutterchallange/presentation/screens/detail-screen/transaction_screen.dart';
import 'package:flutterchallange/presentation/screens/menus/feat_screen.dart';
import 'package:flutterchallange/presentation/screens/menus/home_screen.dart';
import 'package:flutterchallange/presentation/screens/menus/login_screen.dart';
import 'package:flutterchallange/presentation/screens/menus/profile_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String mainMenu = "/main-menu";

  static const String login = "/login";

  static const String home = '/home';
  static const String feat = '/feat';
  static const String profile = '/Profile';

  static const String transaction = '/transaction';


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
    // GetPage(
    //   name: feat, 
    //   page: ()=> FeatScreen()
    // ),
    GetPage(
      name: profile, 
      page: ()=> ProfileScreen()
    ),
    GetPage(
      name: transaction, 
      page: ()=> TransactionScreen()
    ),
  ];
}