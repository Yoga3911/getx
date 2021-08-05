import 'package:get/get.dart';
import 'package:getx/home_page.dart';
import 'package:getx/routes/route_name.dart';
import 'package:getx/view/detail_page.dart';
import 'package:getx/view/dummy.dart';
import 'package:getx/view/main_page.dart';

class MyPage {
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage()),
    GetPage(name: RouteName.main, page: () => MainPage()),
    GetPage(name: RouteName.detail, page: () => DetailPage()),
    GetPage(name: RouteName.dummy, page: () => Dummy())
  ];
}