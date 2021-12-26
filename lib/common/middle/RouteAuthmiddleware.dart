import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:test22/common/routes/app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  final int priority;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    Future.delayed(
        const Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    return const RouteSettings(name: AppRoutes.Login);
  }
}
