import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test22/common/routes/app_pages.dart';

class NotfoundView extends StatelessWidget {
  const NotfoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("路由没有找到"),
      ),
      body: ListTile(
        title: const Text("首页路由"),
        subtitle: const Text("Get.offAllNamed(AppRoutes.Home)"),
        onTap: () => Get.offAllNamed(AppRoutes.Home),
      ),
    );
  }
}
