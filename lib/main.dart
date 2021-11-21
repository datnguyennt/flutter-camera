import 'package:flutter/material.dart';
import 'package:fluttercamera/controller/home/home_binding.dart';
import 'package:fluttercamera/controller/product/product_binding.dart';
import 'package:fluttercamera/routes/app_pages.dart';
import 'package:fluttercamera/routes/app_routes.dart';
import 'package:fluttercamera/views/product/product_page.dart';
import 'package:get/get.dart';

import 'views/home/home_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.NEAR_BY_ME,
      getPages: AppPages.pages,
    );
  }
}
