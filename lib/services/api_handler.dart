import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_api_flutter_course/consts/api_consts.dart';

class APIHandler {
  Future<void> getAllProducts() async {
    var uri = Uri.https(
      BASE_URL,
      'api/v1/products',
    );
    http.Response response = await http.get(uri);

    print('response ${jsonDecode(response.body)}');
  }
}
