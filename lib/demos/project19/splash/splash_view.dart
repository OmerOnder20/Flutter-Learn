import 'package:first_project_flutter/demos/project19/Screens/login.dart';
import 'package:first_project_flutter/demos/project19/core/auth_manager.dart';
import 'package:first_project_flutter/demos/project19/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Screens/home.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<void> controlToApp() async {
    await context.read<AuthManager>().fetchUserLogin();
    if (context.read<AuthManager>().isLogin) {
      await Future.delayed(const Duration(seconds: 2));
      context.read<AuthManager>().model = UserModel(name: "Ömer Önder", imageUrl: "assets/png/caillou.png");
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home19(),
      ));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Login19(),
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    controlToApp();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
