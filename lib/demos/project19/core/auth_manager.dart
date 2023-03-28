// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_project_flutter/demos/project19/core/cache_manager.dart';
import 'package:first_project_flutter/demos/project19/user_model.dart';
import 'package:flutter/material.dart';

class AuthManager extends CacheManagerToken {
  BuildContext context;
  AuthManager({
    required this.context,
  }) {
    fetchUserLogin();
  }

  bool isLogin = false;
  UserModel? model;

  void removeAllData() {
    isLogin = false;
    model = null;
  }

  Future<void> fetchUserLogin() async {
    final token = await getToken();
    if (token != null) {
      isLogin = true;
    }
  }
}
