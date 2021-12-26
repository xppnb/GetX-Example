import 'dart:convert';

import 'package:get/get.dart';
import 'package:test22/common/untils/http.dart';

class NewsDioController extends GetxController {
  var newsPageList = Rx({});

  getPageList() async {
    var response = await HttpUtil().get("/Interface/index/userSellInfoTEditer");
    var result = json.decode(response);
    newsPageList.value = result;
  }
}
