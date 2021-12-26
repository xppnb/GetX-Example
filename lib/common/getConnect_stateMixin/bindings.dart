import 'package:get/get.dart';
import 'package:test22/common/getConnect_stateMixin/provider.dart';

import 'controller.dart';

class MinxNewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsStateMixinProvider>(() => NewsStateMixinProvider());
    Get.lazyPut<NewsStateMixinController>(
        () => NewsStateMixinController(provider: Get.find()));
  }
}
