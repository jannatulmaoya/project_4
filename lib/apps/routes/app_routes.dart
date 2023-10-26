part of 'app_page.dart';

abstract class Routes {
  Routes._();
  static const MainAppPage = _Path.MainAppPage;
  static const SPlashScreen = _Path.SplashScreen;
  static const HomePage = _Path.HomePage;
  static const UserInputPage = _Path.UserInputPage;
  static const RepoWebView = _Path.RepoWebView;
}

abstract class _Path {
  _Path._();
  static const MainAppPage = "/MainAppPage";
  static const SplashScreen = "/";
  static const HomePage = "/HomePage";
  static const UserInputPage = "/UserInputPage";
  static const RepoWebView = "/RepoWebView ";
}
