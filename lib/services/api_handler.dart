import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_api_flutter_course/consts/api_consts.dart';
import 'package:store_api_flutter_course/models/products_model.dart';

class APIHandler {
  Future<List<ProductsModel>> getAllProducts() async {
    var uri = Uri.https(
      BASE_URL,
      'api/v1/products',
    );
    http.Response response = await http.get(uri);

    var data = jsonDecode(response.body);
    List tempList = [];

    for (var value in data) {
      tempList.add(value);
    }

    return ProductsModel.productsFromJson(tempList);
  }
}
