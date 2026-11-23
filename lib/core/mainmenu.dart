import 'package:flutter/material.dart';
import 'package:flutterchallange/controllers/mainmenu_controller.dart';
import 'package:get/get.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainmenuController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        children: controller.listPages,
        index: controller.selectedIndex.value,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.changePage,
        currentIndex: controller.selectedIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shelves),
            label: 'history'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile'
            ),
        ]),
    ));
  }
}