import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test22/common/getConnect/controller.dart';

class NewsView extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    buildListView(state) {
      return ListView.separated(
          itemBuilder: (context, index) {
            final item = state["data"][index];
            return Text(item["carTypeName"]);
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: state != null ? state["data"].length : 0);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetConnect Page"),
      ),
      body: controller.obx((state) => buildListView(state),
          onEmpty: const Text("onEmpty"),
          onLoading: Center(
            child: Column(
              children: [
                const Text("没有数据"),
                ElevatedButton(
                    onPressed: () {
                      controller.getNewsPageList();
                    },
                    child: const Text("拉去数据"))
              ],
            ),
          ),
          onError: (err) => Text("onEmpty:${err.toString()}")),
    );
  }
}
