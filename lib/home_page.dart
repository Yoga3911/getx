import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/orangC.dart';
import 'package:getx/routes/route_name.dart';
import 'package:getx/view/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orangC = Get.put(OrangController());
    var counter = Get.put(GetController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // FloatingActionButton.extended(
            //     onPressed: () => counter.reset(), label: Text('Clear')),
            // //Obx perlu definisikan class kedalam variabel dulu
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     FloatingActionButton(
            //       onPressed: () {
            //         if (counter.counterObx.value > 0) counter.decreamentObx();
            //       },
            //       child: Icon(Icons.remove),
            //     ),
            //     Obx(() => Text(counter.counterObx.value.toString())),
            //     FloatingActionButton(
            //       onPressed: () => counter.increamentObx(),
            //       child: Icon(Icons.add),
            //     ),
            //   ],
            // ),
            // //GetX tidak perlu definisikan variable
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     FloatingActionButton(
            //       onPressed: () {
            //         if (counter.counterGetX.value > 0)
            //           Get.find<GetController>().decreamentGetX();
            //       },
            //       child: Icon(Icons.remove),
            //     ),
            //     GetX<GetController>(
            //         init: GetController(),
            //         builder: (controller) =>
            //             Text('${controller.counterGetX.value}')),
            //     FloatingActionButton(
            //       onPressed: () => Get.find<GetController>().increamentGetX(),
            //       child: Icon(Icons.add),
            //     ),
            //   ],
            // ),
            // FloatingActionButton(
            //   onPressed: () => counter.darked(),
            //   child: Icon(Icons.chair),
            // ),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //   FloatingActionButton.extended(
            //       onPressed: () {
            //         orangC.namaLower();
            //       },
            //       label: Text('LowerCase')),
            //   Obx(
            //     () => Text(
            //         'Nama ${orangC.orang.value.nama} umur ${orangC.orang.value.umur}'),
            //   ),
            //   FloatingActionButton.extended(
            //       onPressed: () {
            //         orangC.namaUpper();
            //       },
            //       label: Text('UpperCase')),
            // ]),
            FloatingActionButton.extended(
                onPressed: () {
                  Get.toNamed(RouteName.main);
                }, label: Text('Main Menu'))
          ],
        ),
      ),
    );
  }
}
