import 'package:get/get.dart';
import 'package:market/src/pages/auth/auth_imports.dart';
import 'package:market/src/pages/home/home_imports.dart';
abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.singInRoute,
      page: () =>  SignInScreen(),
    ),
    GetPage(name: PagesRoutes.homeRoute, 
    page: () => const HomeScreen()),
  
  ];
}

abstract class PagesRoutes{
  static const String singInRoute = '/signIn';
  static const String homeRoute = '/home';

}