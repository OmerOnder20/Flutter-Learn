import 'package:dio/dio.dart';

class ProjectDioMixin {
  final service = Dio(BaseOptions(baseUrl: "https://reqres.in/api"));
  final serviceProject16 = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"));
  final serviceProject18 = Dio(BaseOptions(baseUrl: "https://reqres.in/api"));
}
