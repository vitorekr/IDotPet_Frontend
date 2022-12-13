import 'package:get/get.dart';
import 'package:idotpet_frontend/modules/auth/frameworks/config/login_bindings.dart';
import 'package:idotpet_frontend/modules/auth/frameworks/ui/login_page.dart';
import 'package:idotpet_frontend/modules/home/framework/home_page.dart';

class AppRoutes {
  static const String _home = '/';
  static const String _login = '/login';

  static final pages = [
    GetPage(
      name: _home,
      page: () => const HomePage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];

  static String homePath() => '/';
  static String loginPath() => _login;
}