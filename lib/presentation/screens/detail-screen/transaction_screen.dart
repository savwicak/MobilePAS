

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterchallange/controllers/transaction_controller.dart';
import 'package:flutterchallange/core/colors.dart';
import 'package:flutterchallange/presentation/components/general/custom_button.dart';
import 'package:flutterchallange/presentation/components/login-screen/custom_field_login.dart';
import 'package:get/get.dart';

class TransactionScreen extends StatelessWidget {
  TransactionScreen({super.key});

  final controller = Get.put(TransactionController());

   TextEditingController txtJumlahMakanan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final food = controller.food;
    final jumlah = txtJumlahMakanan.obs;

    return Scaffold(
      backgroundColor: NewColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          food['name'],
          style: TextStyle(
            color: NewColors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: NewColors.cream,
        iconTheme: IconThemeData(
          color: NewColors.brown,
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              food['imageUrl'],
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: NewColors.cream,
                  child: Icon(
                    Icons.restaurant,
                    size: 50,
                    color: NewColors.orange,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          Text(
            food['name'],
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Description",
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            food['description'],
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 14,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            food['price'],
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 14,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 25),

          CustomTextField(
            isPassword: false, 
            hint: "jumlah makanan", 
            txtController: txtJumlahMakanan, 
            icon: Icons.price_change_rounded
          ),
          

          CustomButton(
            onPressed: () {
              controller.calcutaleprice(
                food['price'], 
                double.parse(txtJumlahMakanan.text),
              );
            }, 
            
            buttonText: "Bayar"
          ),

          const SizedBox(height: 25),
          Obx(
              () => Row(
                children: [
                  Text("sub total:"),
                  Text(
                controller.totalfoodPrice.value.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
                ],
              )
            ),
            const SizedBox(height: 10),
          Obx(
              () => Row(
                children: [
                  Text("ppn:"),
                  Text(
                controller.totalppn.value.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
                ],
              )
            ),
            const SizedBox(height: 10),
            Obx(
              () => Row(
                children: [
                  Text("total bayar"),
                  Text(
                controller.total.value.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
                ],
              )
            ),

        ],
      ),
    );
  }
}
