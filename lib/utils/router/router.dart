import 'package:get/get.dart';
import 'package:task_tracker/features/home/views/home.dart';
import 'package:task_tracker/features/home/views/splash_screen.dart';

class ZRouter {
  ZRouter._();

  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: '/',
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: '/home',
      page: () => const HomeScreen(),
    ),
  ];
}
