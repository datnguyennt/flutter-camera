import 'package:get/get.dart';

class ProductController extends GetxController {
  RxInt counter = 0.obs;
  void increment() {
    counter++;
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  
}
