import 'dart:convert';

import 'package:get/get.dart';
import 'package:test22/common/getConnect/provider.dart';

abstract class INewsRepository {
  Future getNews();
}

class NewsRepository implements INewsRepository {
  final INewsProvider iNewsProvider;

  NewsRepository({required this.iNewsProvider});

  @override
  Future getNews() async {
    Response response = await iNewsProvider.getNews();
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return json.decode(response.body.body);
    }
  }
}
