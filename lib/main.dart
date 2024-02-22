import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/controller/product_controller.dart';
import 'package:shoppy/service/constant/colors.dart';
import 'package:shoppy/service/network/base_api.dart';
import 'package:shoppy/service/network/base_dio.dart';
import 'package:shoppy/view/src/bottom_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => BaseDio());
  Get.lazyPut(() => BaseAPI());
  Get.lazyPut(() => ProductController());
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
      home: const BottomNavBar(),
    );
  }
}
