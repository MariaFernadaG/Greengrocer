import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:market/src/pages/auth/controller/auth_controller.dart';
import 'package:market/src/pages_routes/app_pages.dart';
import 'package:get/get.dart';
void main() {
  Get.put(AuthController());
  runApp(const MyApp(    
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Market App',
      theme: ThemeData(
           primarySwatch: Colors.green,
          
           scaffoldBackgroundColor: Colors.white.withAlpha(190),
        ),
    
        initialRoute: '/signIn',
        getPages: AppPages.pages,
        debugShowCheckedModeBanner: false,
      );
  }
}
