import 'package:get/get.dart';

class CountController extends GetxController {
  final _count = 0.obs;

  set count(value) => _count.value = value;

  get count => _count.value;

  add() => _count.value++;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //每次执行
    ever(_count, (val) {
      print("ever -> $val");
    });

    once(_count, (val) {
      print('once -> $val');
    });

    //防抖 2秒
    debounce(_count, (val) {
      print('debounce -> $val');
    }, time: const Duration(milliseconds: 200));

    //定时器 1秒
    interval(_count, (val) {
      print("interval -> $val");
    }, time: const Duration(milliseconds: 1000));
  }
}
