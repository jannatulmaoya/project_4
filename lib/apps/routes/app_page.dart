import 'package:get/get.dart';

import 'package:project_4/apps/modiuls/mainAppPage/bindings/main_App_Page_binding.dart';
import 'package:project_4/apps/modiuls/mainAppPage/views/main_App_Page_View.dart';
import 'package:project_4/apps/modiuls/splash_screeen/views/spolash_View.dart';

import '../modiuls/UserInputs/bindings/User_Input_Binding.dart';
import '../modiuls/UserInputs/views/User_Input_View.dart';
import '../modiuls/home/bindings/home_binding.dart';
import '../modiuls/home/views/home_view.dart';
import '../modiuls/splash_screeen/bindings/splash-binding.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPlashScreen;
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
      name: _Path.HomePage,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Path.UserInputPage,
      page: () => const UserInputView(),
      binding: UserInputBinding(),
    )
  ];
}
