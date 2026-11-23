import 'package:flutter/material.dart';
import 'package:flutterchallange/controllers/food_controller.dart';
import 'package:flutterchallange/core/routes.dart';
import 'package:flutterchallange/presentation/widget/food_card.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: 190,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(16),
          itemCount: controller.foodData.length,
          itemBuilder: (context, index) {
            final food = controller.foodData[index];

            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SizedBox(
                width: 400, // lebar setiap card
                child: FoodCard(
                  name: food.name,
                  price: food.price.toString(),
                  description: food.description,
                  imageUrl: food.imageUrl,
                  onTap: () {
                    Get.toNamed(
                      Routes.transaction,
                      arguments: {
                        "name": food.name,
                        "price": food.price,
                        "description": food.description,
                        "imageUrl": food.imageUrl,
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
