import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test22/common/state_getx/controller.dart';

class GetxPage extends StatelessWidget {
  GetxPage({Key? key}) : super(key: key);
  CountController controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GetX<CountController>(
              builder: (_) {
                return Text(controller.count.toString());
              },
              initState: (_) {},
              init: controller,
            ),
            GetX<CountController>(
              builder: (_) {
                return Text(controller.count.toString());
              },
              initState: (_) {},
              init: controller,
            ),
            GetX<CountController>(
              builder: (_) {
                return Text(controller.count.toString());
              },
              initState: (_) {},
              init: controller,
            ),
            GetX<CountController>(
              builder: (_) {
                return Text(controller.count2.toString());
              },
              initState: (_) {},
              init: controller,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.add();
                },
                child: const Text("count++")),
            ElevatedButton(
                onPressed: () {
                  controller.add2();
                },
                child: const Text("count2++")),
          ],
        ),
      ),
    );
  }
}
