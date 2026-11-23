import 'package:flutter/material.dart';
import 'package:flutterchallange/presentation/screens/menus/feat_screen.dart';
import 'package:flutterchallange/presentation/screens/menus/home_screen.dart';
import 'package:flutterchallange/presentation/screens/menus/profile_screen.dart';
import 'package:get/get.dart';

class MainmenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index){
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
      HomeScreen(),
      // FeatScreen(),
      ProfileScreen(),
    ];
}