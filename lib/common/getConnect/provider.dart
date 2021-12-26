import 'package:get/get.dart';
import 'package:test22/common/untils/base_provider.dart';

abstract class INewsProvider {
  Future<Response> getNews();
}

class NewsProvider extends BaseProvider implements INewsProvider {
  @override
  Future<Response> getNews() async {
    Response response = await get("/Interface/index/userSellInfoTEditer");
    return Response(
        statusCode: response.statusCode,
        statusText: response.statusText,
        body: response);
  }
}
