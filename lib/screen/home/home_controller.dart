import 'package:api_demo/modal/productlist.dart';
import 'package:get/get.dart';

import 'home_api.dart';

class HomeScreencontroller extends GetxController {
  ProductList? productData;

  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    productData = await HomeApi.getData();
    update(["prodect"]);
  }
}
