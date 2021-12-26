import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test22/common/dependency_lazyPut/controller.dart';

class NextPage extends GetView<CountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency-LazyPut-details"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("value -> ${controller.count}")),
            ElevatedButton(
                onPressed: () {
                  controller.add();
                },
                child: const Text("add"))
          ],
        ),
      ),
    );
  }
}
