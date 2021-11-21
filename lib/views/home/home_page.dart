import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttercamera/controller/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/product');
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => controller.selectedImagePath.value == ''
                    ? const Text(
                        'Select image',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                        ),
                      )
                    : Image.file(
                        File(
                          controller.selectedImagePath.value,
                        ),
                      ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Obx(
                () => Text(
                  controller.selectedImageSize.value == ''
                      ? ''
                      : controller.selectedImageSize.value.toString(),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.getImage(ImageSource.camera);
                },
                child: const Text(
                  'Camera',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.getImage(ImageSource.gallery);
                },
                child: const Text(
                  'Galery',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
