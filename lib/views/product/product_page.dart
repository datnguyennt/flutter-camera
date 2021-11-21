import 'package:flutter/material.dart';
import 'package:fluttercamera/controller/product/product_controller.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductController> {
  Future _onBackPressed() async {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          controller.increment();
        },
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            _onBackPressed();
          },
        ),
        title: const Text('Product'),
      ),
      body: Container(
        child: Center(
          child: GetX<ProductController>(
            builder: (_) {
              return Text('Number: ${_.counter.value}');
            },
          ),
        ),
      ),
    );
  }
}
