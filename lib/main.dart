import 'package:flutter/material.dart';
import 'package:shoppy/constant/colors.dart';
import 'package:shoppy/view/src/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Lato',
        scaffoldBackgroundColor: AppColors.white,
        brightness: Brightness.light,
      ),
      home: const LoginPage(),
    );
  }
}
