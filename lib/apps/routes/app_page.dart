import 'package:get/get.dart';
import 'package:project_4/apps/modiuls/mainAppPage/bindings/main_App_Page_binding.dart';
import 'package:project_4/apps/modiuls/mainAppPage/views/main_App_Page_View.dart';
import 'package:project_4/apps/modiuls/splash_screeen/views/spolash_View.dart';

import '../modiuls/home/bindings/home_binding.dart';
import '../modiuls/home/views/home_view.dart';
import '../modiuls/splash_screeen/bindings/splash-binding.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SplashScreen;
  static final Page = [
    GetPage(
      name: _Path.SplashScreen,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Path.MainAppPage,
      page: () => const MainAppPageView(),
      binding: MainAppPageBinding(),
    ),
    GetPage(
      name: _Path.Home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
