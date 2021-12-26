import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class NewsDioView extends StatelessWidget {
  NewsDioView({Key? key}) : super(key: key);

  _buildListView(Map<dynamic, dynamic> items) {
    return items.isEmpty
        ? Center(
            child: Column(
              children: [
                const Text("没有数据"),
                ElevatedButton(
                  onPressed: () {
                    Get.find<NewsDioController>().getPageList();
                  },
                  child: const Text('拉取数据'),
                ),
              ],
            ),
          )
        : ListView.separated(
            itemCount: items["data"].length,
            itemBuilder: (context, index) {
              var item = items["data"][index];
              return Text(item["carTypeName"]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<NewsDioController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetConnect Page"),
      ),
      body: GetX<NewsDioController>(
        init: controller,
        builder: (_) => _buildListView(_.newsPageList.value),
      ),
    );
  }
}
