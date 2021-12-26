import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    httpClient.baseUrl = "http://192.168.21.233:8085";

    //请求拦截
    httpClient.addRequestModifier<void>((request) {
      request.headers["Authorization"] = "123123";
      return request;
    });

    //响应拦截
    httpClient.addResponseModifier((request, response) => response);
  }
}
