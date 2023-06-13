import 'dart:io';

import 'package:dio/dio.dart';

import '../model/project_29_model.dart';
import '../model/response_model_29.dart';

abstract class ILoginService29 {
  final Dio dio = Dio();

  Future<Response29?> fetchLogin(Request29 model);
}

class LoginService29 extends ILoginService29 {
  @override
  Future<Response29?> fetchLogin(Request29 model) async {
    final response = await dio.post("https://reqres.in/api/login", data: model);

    if (response.statusCode == HttpStatus.ok) {
      return Response29.fromJson(response.data);
    }
    return null;
  }
}
