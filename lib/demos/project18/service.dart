import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project18/model.dart';

abstract class INewService {
  final Dio _dio;
  Future<NewModel?> fetchNewItems();
  Future<List<NewModel>?> fetchhhh();

  INewService(this._dio);
}

class NewService extends INewService {
  NewService(super.dio);

  @override
  Future<NewModel?> fetchNewItems() async {
    final response = await _dio.get("/unknown");
    if (response.statusCode == HttpStatus.ok) {
      final responseBody = response.data;
      if (responseBody is Map<String, dynamic>) {
        return NewModel.fromJson(responseBody);
      }
    }
    return null;
  }

  @override
  Future<List<NewModel>?> fetchhhh() async {
    final response = await _dio.get("/unknown");
    if (response.statusCode == HttpStatus.ok) {
      final responseBody = response.data;
      if (responseBody is List) {
        return responseBody.map((e) => NewModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}
