import 'package:get/get.dart';
import 'package:test22/common/getConnect/respository.dart';

class NewsController extends SuperController {
  final INewsRepository repository;

  NewsController({required this.repository});

  Future<void> getNewsPageList() async {
    append(() => repository.getNews);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print('is ready');
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print('on close');
  }

  @override
  void didChangeMetrics() {
    // TODO: implement didChangeMetrics
    super.didChangeMetrics();
    print('the window size did change');
  }

  @override
  void didChangePlatformBrightness() {
    // TODO: implement didChangePlatformBrightness
    super.didChangePlatformBrightness();
    print('platform change themeModel');
  }

  @override
  Future<bool> didPushRoute(String route) {
    print('the route $route will be open');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPopRoute() {
    print('the current route will be closed');
    return super.didPopRoute();
  }

  @override
  void onDetached() {
    print('释放了');
  }

  @override
  void onInactive() {
    print('激活了');
  }

  @override
  void onPaused() {
    print('暂停了');
  }

  @override
  void onResumed() {
    print('重新开始');
  }
}
