import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/303/reqres_resources/model/reqres_model.dart';

abstract class IReqresService {
  Future<ReqresModel?> fetchReqresItem();
}

enum _ReqresPath { unknown }

class ReqresService extends IReqresService {
  final Dio dio;
  ReqresService() : dio = Dio(BaseOptions(baseUrl: "https://reqres.in/api"));

  @override
  Future<ReqresModel?> fetchReqresItem() async {
    final response = await dio.get("/${_ReqresPath.unknown.name}");

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return ReqresModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
