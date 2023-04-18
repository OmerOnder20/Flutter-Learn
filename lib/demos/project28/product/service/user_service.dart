import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../model/product.dart';

class UserService {
  late Dio dio;

  Future<Product28?> fetchItems() async {
    final url = Uri.parse("https://dummyjson.com/products");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      if (responseBody is Map<String, dynamic>) {
        return Product28.fromJson(responseBody);
      }
    }
    return null;
  }

  Future<bool> addCategory(Product product) async {
    final response = await dio.post("/product",
        data: product.toJson(), options: Options(headers: {"user-id": "5fbd48380fe34c4b213dfe6b"}));

    if (response.statusCode == HttpStatus.ok) {
      return true;
    }

    return false;
  }
}
