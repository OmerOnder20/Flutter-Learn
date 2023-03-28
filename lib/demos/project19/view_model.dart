import 'package:first_project_flutter/demos/project19/core/cache_manager.dart';
import 'package:first_project_flutter/demos/project19/request_model.dart';
import 'package:first_project_flutter/demos/project19/service.dart';
import 'package:flutter/widgets.dart';

class LoginProvider extends ChangeNotifier {
  final IService19 service19;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginProvider(this.service19);

  Future<void> userLogin(String email, String password) async {
    final response = await service19.postToService(Project19Model(email: email, password: password));

    if (response != null) {
      CacheManagerToken().saveToken(response.token ?? "");
    }
  }
}
