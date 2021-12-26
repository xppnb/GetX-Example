import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test22/common/state_getx/controller.dart';

class GetBuilderPage extends StatelessWidget {
  GetBuilderPage({Key? key}) : super(key: key);
  CountController controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GetBuilder<CountController>(
                builder: (_) {
                  return Text(controller.count.toString());
                },
                init: controller,
                initState: (_) {},
              ),
              GetBuilder<CountController>(
                builder: (_) {
                  return Text(controller.count.toString());
                },
                init: controller,
                initState: (_) {},
              ),
              GetBuilder<CountController>(
                id: "id2",
                builder: (_) {
                  return Text(controller.count2.toString());
                },
                init: controller,
                initState: (_) {},
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
              ElevatedButton(
                  onPressed: () {
                    controller.update();
                  },
                  child: const Text("update")),
              ElevatedButton(
                  onPressed: () {
                    controller.update(["id2"]);
                  },
                  child: const Text("update[id2]")),
            ],
          ),
        ),
      ),
    );
  }
}
