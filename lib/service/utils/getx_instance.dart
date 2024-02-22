import 'package:shoppy/controller/product_controller.dart';
import 'package:shoppy/service/network/base_api.dart';
import 'package:shoppy/service/network/base_dio.dart';

class GetxInstance {
  static BaseDio baseDio = BaseDio.instance;
  static BaseAPI baseAPI = BaseAPI.instance;
  static ProductController productController = ProductController.instance;
}
