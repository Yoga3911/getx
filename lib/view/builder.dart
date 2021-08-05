import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/orangC.dart';

class Build extends StatelessWidget {
  const Build({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final cC = Get.find<GetController>(tag: 'z');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            if (cC.item.value > 0) {
              cC.item.value--;
              Get.find<GetController>(tag: 'p').total.value--;
            }
          },
          icon: Icon(Icons.remove),
        ),
        Obx(() => Text(cC.item.value.toString())),
        IconButton(
          onPressed: () {
            cC.item.value++;
            Get.find<GetController>(tag: 'p').total.value++;
          },
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
