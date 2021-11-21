import 'package:fluttercamera/controller/near_by_me/near_by_me_controller.dart';
import 'package:get/get.dart';

class NearByMeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NearByMeController>(NearByMeController());
  }
}
