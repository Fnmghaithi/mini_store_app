import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_api_flutter_course/consts/api_consts.dart';
import 'package:store_api_flutter_course/models/categories_model.dart';
import 'package:store_api_flutter_course/models/products_model.dart';
import 'package:store_api_flutter_course/models/users_model.dart';

class APIHandler {
  Future<List<dynamic>> getData({required String target}) async {
    var uri = Uri.https(
      BASE_URL,
      'api/v1/$target',
    );
    http.Response response = await http.get(uri);

    var data = jsonDecode(response.body);
    List tempList = [];

    for (var value in data) {
      tempList.add(value);
    }

    return tempList;
  }

  Future<List<ProductsModel>> getAllProducts() async {
    List temp = await getData(target: 'products');

    return ProductsModel.productsFromJson(temp);
  }

  Future<List<CategoriesModel>> getAllCategories() async {
    List temp = await getData(target: 'categories');
    return CategoriesModel.categoriesFromJson(temp);
  }

  Future<List<UsersModel>> getAllUsers() async {
    List temp = await getData(target: 'users');
    return UsersModel.categoriesFromJson(temp);
  }

  Future<ProductsModel> getProductByID({required String id}) async {
    var uri = Uri.https(
      BASE_URL,
      'api/v1/products/$id',
    );
    http.Response response = await http.get(uri);

    var data = jsonDecode(response.body);

    return ProductsModel.fromJson(data);
  }
}
