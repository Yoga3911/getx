import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/route_name.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('${Get.parameters['nama']}, ${Get.parameters['umur']}'),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    'Notification',
                    'Anda memiliki 2 pesan yang belum terbaca',
                    onTap: (tap) {
                      Get.toNamed(RouteName.dummy);
                    },
                    animationDuration: Duration(milliseconds: 500),
                    duration: Duration(seconds: 5),
                    icon: Icon(Icons.android),
                  );
                },
                child: Text('Click me')),
            
            
          ]),
    ));
  }
}
