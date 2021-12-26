import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ObxPage extends StatelessWidget {
  ObxPage({Key? key}) : super(key: key);

  final count = 0.obs;

  List testList = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Obs"),
        ),
        body: Center(
          child: Column(
            children: [
              Obx(() => Text("count1 => " + count.toString())),
              Obx(() => Text("count2 => " + count.toString())),
              const Divider(),
              ElevatedButton(
                  onPressed: () {
                    count.value++;
                  },
                  child: const Text("add")),
            ],
          ),
        ));
  }
}

late String value;

extension getPx on num {
  double get px {
    return TestClass.getPx(this);
  }
}

class TestClass {
  static int h = 1440;
  static int w = 750;

  static late double screen;

  static void init() {
    screen = h / w;
  }

  static double getPx(num px) {
    init();
    return screen * px;
  }
}
