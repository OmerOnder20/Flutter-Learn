import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project12/post_model_demo_1.dart';

import 'comment_model_12.dart';

abstract class IpostService {
  Future<bool> postToService(PostDemoModel postDemoModel);
  Future<List<PostDemoModel>?> fetchItems();
  Future<bool> putItemToService(PostDemoModel postDemoModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<CommentModelDemo>?> fetchItemsSpesificWithPostId(int postId);
}

class ServiceModels implements IpostService {
  final Dio _networkManager;
  ServiceModels() : _networkManager = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  get postId => null;

  @override
  Future<bool> postToService(PostDemoModel postDemoModel) async {
    try {
      final response = await Dio().post(_PostServiceDemoPaths.posts.name, data: postDemoModel);
      return response.statusCode == HttpStatus.created;
    } catch (_) {}
    return false;
  }

  @override
  Future<List<PostDemoModel>?> fetchItems() async {
    try {
      final response = await _networkManager.get(_PostServiceDemoPaths.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => PostDemoModel.fromJson(e)).toList();
        }
      }
    } catch (exception) {
      print(exception);
    }
    return null;
  }

  @override
  Future<bool> putItemToService(PostDemoModel postDemoModel, int id) async {
    try {
      final response = await Dio().put("${_PostServiceDemoPaths.posts.name}/$id", data: postDemoModel);
      return response.statusCode == HttpStatus.ok;
    } catch (_) {}
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await Dio().put("${_PostServiceDemoPaths.posts.name}/$id");
      return response.statusCode == HttpStatus.ok;
    } catch (_) {}
    return false;
  }

  @override
  Future<List<CommentModelDemo>?> fetchItemsSpesificWithPostId(int postId) async {
    try {
      final response = await _networkManager
          .get(_PostServiceDemoPaths.comments.name, queryParameters: {_PostQueryDemoPaths.postId.name: postId});

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => CommentModelDemo.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print("Hata");
    }
    return null;
  }
}

enum _PostServiceDemoPaths { posts, comments }

enum _PostQueryDemoPaths { postId }
