import 'package:get/get.dart';
import 'package:test22/common/untils/base_provider.dart';

abstract class IMinxNewsProvider {
  Future<Response> getNews();
}

class NewsStateMixinProvider extends BaseProvider implements IMinxNewsProvider {
  @override
  Future<Response> getNews() => get("/Interface/index/userSellInfoTEditer");
}
