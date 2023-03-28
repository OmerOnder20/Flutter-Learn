import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project16/project_16_model.dart';

abstract class IProject16Service {
  final Dio _dio;

  IProject16Service(this._dio);
  Future<List<Project16Model>?> fetchItems();
}

enum _Project16Path { posts }

class Project16Service extends IProject16Service {
  Project16Service(super.dio);

  @override
  Future<List<Project16Model>?> fetchItems() async {
    try {
      final response = await _dio.get("/${_Project16Path.posts.name}");

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => Project16Model.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print(_);
    }
    return null;
  }
}
