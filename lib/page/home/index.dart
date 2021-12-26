import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:test22/common/routes/app_pages.dart';
import 'package:test22/page/list_details/index.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("首页"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text("导航-命名路由 home > list"),
              subtitle: const Text('Get.toNamed("/home/list")'),
              onTap: () => Get.toNamed("/home/list"),
            ),
            ListTile(
              title: const Text("导航-命名路由 home > list > detail"),
              subtitle: const Text('Get.toNamed("/home/list/details")'),
              onTap: () => Get.toNamed("/home/list/details"),
            ),
            ListTile(
              title: const Text("导航-类对象"),
              subtitle: const Text("Get.to(ListDetailsPage())"),
              onTap: () => Get.to(const ListDetailsPage()),
            ),
            ListTile(
              title: const Text("导航-清除上一个"),
              subtitle: const Text("Get.off(DetailView())"),
              onTap: () => Get.off(const ListDetailsPage()),
            ),
            ListTile(
              title: const Text("导航-清除所有"),
              subtitle: const Text("Get.offAll(DetailView())"),
              onTap: () => Get.offAll(const ListDetailsPage()),
            ),
            const Divider(),
            ListTile(
              title: const Text("导航-arguments传值+返回值"),
              subtitle: const Text(
                  'Get.toNamed("/home/list/details", arguments: {"id": 999})'),
              onTap: () async {
                var result = await Get.toNamed("/home/list/details",
                    arguments: {"id": 999});
                Get.snackbar(
                    "返回值", "success -> " + result["success"].toString(),
                    snackPosition: SnackPosition.BOTTOM);
              },
            ),
            ListTile(
              title: const Text("导航-parameters传值+返回值"),
              subtitle: const Text('Get.toNamed("/home/list/details?id=666")'),
              onTap: () async {
                var result = await Get.toNamed("/home/list/details?id=666");
                Get.snackbar(
                    "返回值", "success -> " + result["success"].toString());
              },
            ),
            ListTile(
              title: const Text("导航-参数传值+返回值"),
              subtitle: const Text('Get.toNamed("/home/list/details/777")'),
              onTap: () async {
                var result = await Get.toNamed("/home/list/details/777");
                Get.snackbar(
                    "返回值", "success -> " + result["success"].toString());
              },
            ),
            ListTile(
              title: const Text("导航-not found"),
              subtitle: const Text('Get.toNamed("/aaa/bbb/ccc")'),
              onTap: () async {
                var result = await Get.toNamed("/aaa/bbb/ccc");
              },
            ),
            ListTile(
              title: const Text("导航-中间件-认证Auth"),
              subtitle: const Text('Get.toNamed(AppRoutes.My)'),
              onTap: () => Get.toNamed(AppRoutes.My),
            ),
            const Divider(),
            ListTile(
              title: const Text("State-Obs"),
              subtitle: const Text('Get.toNamed(AppRoutes.Obs)'),
              onTap: () => Get.toNamed(AppRoutes.Obs),
            ),
            ListTile(
              title: const Text("State-Getx"),
              subtitle: const Text('Get.toNamed(AppRoutes.Getx)'),
              onTap: () => Get.toNamed(AppRoutes.Getx),
            ),
            ListTile(
              title: const Text("Get-Builder"),
              subtitle: const Text('Get.toNamed(AppRoutes.Builder)'),
              onTap: () => Get.toNamed(AppRoutes.Builder),
            ),
            ListTile(
              title: const Text("Value-Builder"),
              subtitle: const Text('Get.toNamed(AppRoutes.Value-Builder)'),
              onTap: () => Get.toNamed(AppRoutes.value_builder),
            ),
            ListTile(
              title: const Text("State-Worker"),
              subtitle: const Text('Get.toNamed(AppRoutes.worker)'),
              onTap: () => Get.toNamed(AppRoutes.worker),
            ),
            ListTile(
              title: const Text("State-Put"),
              subtitle: const Text('Get.toNamed(AppRoutes.put)'),
              onTap: () => Get.toNamed(AppRoutes.Put),
            ),
            ListTile(
              title: const Text("State-Lazy"),
              subtitle: const Text('Get.toNamed(AppRoutes.lazy)'),
              onTap: () => Get.toNamed(AppRoutes.Lazy),
            ),
            ListTile(
              title: const Text("State-Connecting"),
              subtitle: const Text('Get.toNamed(AppRoutes.connecting)'),
              onTap: () => Get.toNamed(AppRoutes.GetConnect),
            ),
            ListTile(
              title: const Text("State-Minx"),
              subtitle: const Text('Get.toNamed(AppRoutes.Minx)'),
              onTap: () => Get.toNamed(AppRoutes.GetMinx),
            ),
            ListTile(
              title: const Text("State-Dio"),
              subtitle: const Text('Get.toNamed(AppRoutes.Dio)'),
              onTap: () => Get.toNamed(AppRoutes.GetDio),
            ),
          ],
        ));
  }
}
