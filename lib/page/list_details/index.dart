import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListDetailsPage extends StatefulWidget {
  const ListDetailsPage({Key? key}) : super(key: key);

  @override
  _ListDetailsPageState createState() => _ListDetailsPageState();
}

class _ListDetailsPageState extends State<ListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final details = Get.arguments;
    final params = Get.parameters;
    return Scaffold(
        appBar: AppBar(
          title: const Text("列表详情页"),
        ),
        body: ListView(
          children: [
            ListTile(
                title: const Text("返回"),
                subtitle: const Text("Get.back()"),
                onTap: () => Get.back()),
            _buildBackListTileRow(details),
            _buildBackListTileRow(params),
          ],
        ));
  }

  _buildBackListTileRow(Map? val) {
    return val == null || val.isEmpty
        ? Container()
        : ListTile(
            title: Text("传值 id = " + val["id"].toString()),
            subtitle: const Text('Get.back(result: {"success": true}'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }
}
