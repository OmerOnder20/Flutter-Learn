import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/202/service/post_model.dart';

class PostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response = await _dio.post("posts", data: postModel);

      return response.statusCode == HttpStatus.created;
    } catch (_) {}
    return false;
  }

  Future<List<PostModel>?> fetchPostItem() async {
    try {
      final response = await Dio().get("https://jsonplaceholder.typicode.com/posts");

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print("a");
    }
    return null;
  }
}
