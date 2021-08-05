import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/orangC.dart';
import 'package:getx/view/builder.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cC = Get.put(GetController(), tag: 'p');
    final cR = Get.create(() => GetController(), tag: 'z');


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Obx(() => Text('${cC.total}')),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Build();
          }),
    );
  }
}
