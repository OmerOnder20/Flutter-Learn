import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:first_project_flutter/demos/project25/model/project_25_model.dart';
import 'package:http/http.dart' as http;

class Project25Service {
  Future<List<Project25Model>?> fetchItems() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final responseBody = jsonDecode(response.body);
      inspect(responseBody);
      if (responseBody is List) {
        return responseBody.map((e) => Project25Model.fromJson(e)).toList();
      }

      return [];
    }
    return null;
  }
}
