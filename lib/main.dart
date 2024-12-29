import 'package:flutter/material.dart';
import '../src/auth/auth_imports.dart';
void main() {
  runApp(const MyApp(
    
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market App',
      theme: ThemeData(
  
         primarySwatch: Colors.green),
         home: const SignInScreen(),
               debugShowCheckedModeBanner: false,
      );
  }
}
