import 'package:get/get.dart';
import 'package:test22/common/getConnect/controller.dart';
import 'package:test22/common/getConnect/provider.dart';
import 'package:test22/common/getConnect/respository.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<INewsProvider>(() => NewsProvider());
    Get.lazyPut<INewsRepository>(
        () => NewsRepository(iNewsProvider: Get.find()));
    Get.lazyPut(() => NewsController(repository: Get.find()));
  }
}
