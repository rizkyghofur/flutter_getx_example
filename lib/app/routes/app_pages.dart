import 'package:get/get.dart';

import '../modules/bottom_navbar/bindings/bottom_navbar_binding.dart';
import '../modules/bottom_navbar/views/bottom_navbar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home2/bindings/home2_binding.dart';
import '../modules/home2/views/home2_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAVBAR;

  static final routes = [
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => const BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME2,
      page: () => const Home2View(),
      binding: Home2Binding(),
    ),
  ];
}
