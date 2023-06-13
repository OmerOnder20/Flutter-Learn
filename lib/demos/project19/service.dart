import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project19/request_model.dart';
import 'package:first_project_flutter/demos/project19/response_model.dart';

abstract class IService19 {
  final Dio dio;

  IService19(this.dio);

  Future<ResponseModel?> postToService(Project19Model model);
}

class Service19 extends IService19 {
  Service19(super.dio);

//*** Project19Model Request modeldir.
  @override
  Future<ResponseModel?> postToService(Project19Model model) async {
    final response = await dio.post("https://reqres.in/api/login", data: model);

    if (response.statusCode == HttpStatus.ok) {
      return ResponseModel.fromJson(response.data);
    }
    return null;
  }
}
