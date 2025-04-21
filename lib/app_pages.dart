import 'package:get/get.dart';
import 'signup_page.dart'; // pastikan file ini ada

class AppPages {
  static const INITIAL = '/signup';

  static final routes = [
    GetPage(
      name: '/signup',
      page: () => SignUpPage(),
    ),
    // Tambahkan route lain jika perlu
  ];
}
