import 'package:dio/dio.dart';
import 'package:get/get.dart';

class BaseDio extends GetxController {
  static BaseDio instance = Get.find();

  Dio getDio() {
    final Dio dio = Dio();
    dio.options.baseUrl = 'https://fakestoreapi.com/';
    dio.options.headers = {
      'Accept': '*/*',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    return dio;
  }

  Dio getWithToken() {
    final dio = getDio();
    dio.options.headers['Authorization'] = '';
    return dio;
  }
}
