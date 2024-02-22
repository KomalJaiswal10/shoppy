import 'package:get/get.dart';
import 'package:shoppy/model/product_model.dart';
import 'package:shoppy/service/utils/getx_instance.dart';

class ProductController extends GetxController {
  static ProductController instance = Get.find();
  List<ProductModel> productsList = [];
  getProducts() async {
    try {
      List data = await GetxInstance.baseAPI.baseGetAPI(api: 'products');
      for (var element in data) {
        productsList.add(ProductModel.fromJson(element));
      }
    } catch (err) {
      print(err);
    }
  }
}
