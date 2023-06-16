import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../modal/productlist.dart';
import '../../services/http_api_services.dart';
import '../../utilis/endpointRes.dart';

class HomeApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpServices.getApi(url: EndPointRes.productAPI);
      if (response != null && response.statusCode == 200) {
        return productListFromJson(response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
