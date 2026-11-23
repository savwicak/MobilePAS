
import 'package:get/get.dart';

class TransactionController extends GetxController {
  late Map<String, dynamic> food;

  var totalfoodPrice = 0.obs;
  var totaljumlah = 0.obs;
  var totalppn = 0.obs;
  var total = 0.obs;

  void calcutaleprice(double price, double jumlah){
    double  mysubtotal = price * jumlah;
    double myppn = mysubtotal * 0.05;

    double finalprice = mysubtotal + myppn;


    totalfoodPrice.value = mysubtotal.toInt();
    totalppn.value = myppn.toInt();
    total.value = finalprice.toInt();
  }

  @override
  void onInit() {
    super.onInit();

    food = Map<String, dynamic>.from(
      Get.arguments as Map,
    );
  }

}
