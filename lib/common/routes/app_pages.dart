import 'package:get/get.dart';
import 'package:test22/common/State_Obs/ObxPage.dart';
import 'package:test22/common/dependency_lazyPut/bingdings.dart';
import 'package:test22/common/dependency_lazyPut/index.dart';
import 'package:test22/common/dependency_put_find/index.dart';
import 'package:test22/common/getConnect/bindings.dart';
import 'package:test22/common/getConnect/view.dart';
import 'package:test22/common/getConnect_stateMixin/bindings.dart';
import 'package:test22/common/getConnect_stateMixin/view.dart';
import 'package:test22/common/getController_dio/binding.dart';
import 'package:test22/common/getController_dio/view.dart';
import 'package:test22/common/get_build/index.dart';
import 'package:test22/common/middle/RouteAuthmiddleware.dart';
import 'package:test22/common/state_getx/index.dart';
import 'package:test22/common/state_worker/state_worker.dart';
import 'package:test22/common/value_builder/value_builder.dart';
import 'package:test22/page/home/index.dart';
import 'package:test22/page/list/index.dart';
import 'package:test22/page/list_details/index.dart';
import 'package:test22/page/login/index.dart';
import 'package:test22/page/my/my.dart';
import 'package:test22/page/not_find/NotfoundView.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  ///404
  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => const NotfoundView(),
  );

  static final routes = [
    /// 白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
    ),

    /// 需要登陆 中间件
    GetPage(
      name: AppRoutes.My,
      page: () => const MyView(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),

    unknownRoute,
    GetPage(page: () => const HomeView(), name: AppRoutes.Home, children: [
      GetPage(name: AppRoutes.List, page: () => const ListPage(), children: [
        GetPage(name: AppRoutes.Details, page: () => const ListDetailsPage()),
        GetPage(
          name: AppRoutes.Detail_ID,
          page: () => const ListDetailsPage(),
          transition: Transition.downToUp,
        )
      ]),
    ]),
    GetPage(name: AppRoutes.Obs, page: () => ObxPage()),
    GetPage(name: AppRoutes.Getx, page: () => GetxPage()),
    GetPage(name: AppRoutes.Builder, page: () => GetBuilderPage()),
    GetPage(
        name: AppRoutes.value_builder, page: () => const ValueBuilderPage()),
    GetPage(name: AppRoutes.worker, page: () => StateWorkersView()),
    GetPage(name: AppRoutes.Put, page: () => StateDependencyPutFindView()),
    GetPage(
      name: AppRoutes.Lazy,
      page: () => const StateDependencyLazyPutView(),
      binding: DependencyLazyPutBinding(),
    ),
    GetPage(
      name: AppRoutes.GetConnect,
      page: () => NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: AppRoutes.GetMinx,
      page: () => const MinxNewsView(),
      binding: MinxNewsBinding(),
    ),
    GetPage(
      name: AppRoutes.GetDio,
      page: () => NewsDioView(),
      binding: DioBinding(),
    ),
  ];
}
