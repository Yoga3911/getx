import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/data_orang.dart';
import 'package:getx/model/orang.dart';
import 'package:getx/routes/route_name.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static List<Orang> dataOrang = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: DATA.length,
            itemBuilder: (context, index) {
              dataOrang.add(
                  Orang(nama: DATA[index]['nama'], umur: DATA[index]['umur']));
              return Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onTap: () => Get.toNamed(RouteName.detail +
                      'nama=${dataOrang[index].nama}&umur=${dataOrang[index].umur}'),
                  tileColor: Colors.grey,
                  title: Center(
                    child: Text(
                        'Nama: ${dataOrang[index].nama}\nUmur: ${dataOrang[index].umur}'),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
