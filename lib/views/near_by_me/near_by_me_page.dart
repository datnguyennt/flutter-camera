import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map4d_map/map4d_map.dart';

class NearByMePage extends StatefulWidget {
  const NearByMePage({Key? key}) : super(key: key);

  @override
  State<NearByMePage> createState() => _NearByMePageState();
}

class _NearByMePageState extends State<NearByMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn vị trí'),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: MFMapView(),
      ),
    );
  }
}
