part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const MainAppPage = _Path.MainAppPage;
  static const SPlashScreen = _Path.SplashScreen;
  static const HomePage = _Path.HomePage;
}

abstract class _Path {
  _Path._();
  static const MainAppPage = "/MainAppPage";
  static const SplashScreen = "/SplashScreen";
  static const HomePage = "/HomePage";
}
