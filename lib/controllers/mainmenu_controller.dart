import 'package:flutter/material.dart';
import 'package:flutterchallange/presentation/pages/feat_screen.dart';
import 'package:flutterchallange/presentation/pages/home_screen.dart';
import 'package:flutterchallange/presentation/pages/profile_screen.dart';
import 'package:get/get.dart';

class MainmenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index){
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
      HomeScreen(),
      FeatScreen(),
      ProfileScreen(),
    ];
}