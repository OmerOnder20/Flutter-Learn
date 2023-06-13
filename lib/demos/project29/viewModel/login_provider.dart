import 'package:first_project_flutter/demos/project29/login/model/project_29_model.dart';
import 'package:first_project_flutter/demos/project29/login/service/project_29_service.dart';
import 'package:flutter/material.dart';

class Login29Provider extends ChangeNotifier {
  final ILoginService29 loginService29;

  Login29Provider(this.loginService29);

  Future<void> fetchUserLogin29(String email, String password) async {
    final response = await loginService29.fetchLogin(Request29(email: email, password: password));
    print(response);
  }
}
