import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test22/common/dependency_lazyPut/controller.dart';

import 'next_page.dart';

class StateDependencyLazyPutView extends StatelessWidget {
  const StateDependencyLazyPutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency - LazyPu¬t"),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<CountController>(
              builder: (_) {
                return Text("value -> ${_.count}");
              },
              //先要在路由处绑定
              init: Get.find<CountController>(),
              initState: (_) {},
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<CountController>().add();
                },
                child: const Text("add")),
            ElevatedButton(
                onPressed: () {
                  Get.to(NextPage());
                },
                child: const Text("Next Page")),
          ],
        ),
      ),
    );
  }
}
