import 'package:fluttercamera/controller/controller.dart';
import 'package:fluttercamera/routes/app_routes.dart';
import 'package:fluttercamera/views/category/category_page.dart';
import 'package:fluttercamera/views/view.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => CategoyPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: Routes.NEAR_BY_ME,
      page: () => NearByMePage(),
      binding: NearByMeBinding(),
    ),
  ];
}
