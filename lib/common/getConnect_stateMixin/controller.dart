import 'dart:convert';

import 'package:get/get.dart';
import 'package:test22/common/getConnect_stateMixin/provider.dart';

class NewsStateMixinController extends GetxController with StateMixin {
  final NewsStateMixinProvider provider;

  NewsStateMixinController({required this.provider});

  //获取数据
  Future<void> getNewsPageList() async {
    //获取数据
    final Response response = await provider.getNews();

    //判断，如果有错误
    if (response.hasError) {
      //改变错误，传入错误状态，在ui中会处理这些错误
      change(null, status: RxStatus.error(response.statusText));
    } else {
      //否则=，存储成功，改变状态为成功，
      var data = json.decode(response.body);
      change(data, status: RxStatus.success());
    }
  }
}
