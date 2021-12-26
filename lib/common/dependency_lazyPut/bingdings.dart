import 'package:get/get.dart';
import 'package:test22/common/dependency_lazyPut/controller.dart';

class DependencyLazyPutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}
