import 'package:get/get.dart';
import 'package:getx/home_page.dart';
import 'package:getx/routes/route_name.dart';
import 'package:getx/view/main_page.dart';

class MyPage {
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage()),
    GetPage(name: RouteName.main, page: () => MainPage()),
  ];
}