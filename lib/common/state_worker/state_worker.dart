import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import 'controller.dart';

class StateWorkersView extends StatelessWidget {
  StateWorkersView({Key? key}) : super(key: key);

  final controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workder"),
      ),
      body: Center(
        child: Column(
          children: [
            // 显示
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                return Text('value -> ${_.count}');
              },
            ),

            // 按钮
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: const Text('add'),
            ),
          ],
        ),
      ),
    );
  }
}
