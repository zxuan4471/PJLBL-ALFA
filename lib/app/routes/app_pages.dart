import 'package:get/get.dart';
import '../modules/auth/signin_page.dart';
import '../modules/auth/signup_page.dart';
import '../modules/home/pages/home_page.dart';

class Routes {
  static const SIGNIN = '/signin';
  static const SIGNUP = '/signup';
  static const HOME = '/home';
}

class AppPages {
  static const INITIAL = Routes.SIGNIN;

  static final routes = [
    GetPage(name: Routes.SIGNIN, page: () => SignInPage()),
    GetPage(name: Routes.SIGNUP, page: () => SignUpPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
