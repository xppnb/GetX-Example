import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValueBuilderPage extends StatelessWidget {
  const ValueBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ValueBuilder"),
        ),
        body: Center(
            child: ValueBuilder<int?>(
          initialValue: 10,
          builder: (value, updateFn) {
            return Column(
              children: [
                Text("${value}"),
                ElevatedButton(
                    onPressed: () {
                      updateFn(value! + 1);
                    },
                    child: const Text("add"))
              ],
            );
          },
          onUpdate: (val) {},
          onDispose: () {},
        )));
  }
}
