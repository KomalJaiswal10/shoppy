import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shoppy/service/utils/getx_instance.dart';

class BaseAPI extends GetxController {
  static BaseAPI instance = Get.find();

  baseGetAPI({required String api}) async {
    try {
      final Dio dio = GetxInstance.baseDio.getDio();
      final response = await dio.get(api);
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (err) {
      print(err);
    }
  }
}
