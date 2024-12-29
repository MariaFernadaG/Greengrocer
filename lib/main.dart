import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:market/src/pages_routes/app_pages.dart';
import 'src/pages/auth/auth_imports.dart';
void main() {
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
