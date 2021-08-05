import 'package:get/get.dart';
import 'package:getx/model/orang.dart';

class GetController extends GetxController {
  var counterObx = 0.obs;
  var counterGetX = 0.obs;
  var isDark = false.obs;
  var item = 0.obs;
  var total = 0.obs;

  void increamentObx() => counterObx++;
  void decreamentObx() => counterObx--;
  void increamentGetX() => counterGetX++;
  void decreamentGetX() => counterGetX--;
  void darked() => isDark.value = !isDark.value;
  void reset() {
    counterObx.value = 0;
    counterGetX.value = 0;
  } 
  //GetX Workers
  @override
  void onInit() {
    super.onInit();

    once(isDark, (_) => print('Sekali'));
    
    ever(counterObx, (_) => print('masuk'));

    everAll([counterGetX], (_) => print('mantap'));
    
    debounce(counterObx, (_) => print('Test'));

    interval(counterGetX, (_) => print('TOlol'),time: Duration(seconds: 2));
  }
}

class OrangController {
  var orang = Orang(nama: 'Eko', umur: 20).obs;

  void namaUpper (){
    orang.update((val) => orang.value.nama = orang.value.nama.toString().toUpperCase());
  }
  void namaLower (){
    orang.update((val) => orang.value.nama = orang.value.nama.toString().toLowerCase());
  }
}
