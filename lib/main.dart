import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/orangC.dart';
import 'package:getx/routes/page_route.dart';
import 'package:getx/routes/route_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.put(GetController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: 'MyApp',
        debugShowCheckedModeBanner: false,
        getPages: MyPage.pages,
        initialRoute: RouteName.home,
        theme: controller.isDark.value ? ThemeData.dark() : ThemeData.light(),
      ),
    );
  }
}
