import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project19/Screens/home.dart';
import 'package:first_project_flutter/demos/project19/service.dart';
import 'package:first_project_flutter/demos/project19/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login19 extends StatefulWidget {
  const Login19({super.key});

  @override
  State<Login19> createState() => _Login19State();
}

class _Login19State extends State<Login19> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(Service19(Dio())),
      builder: (context, child) {
        return Scaffold(
          body: Column(children: [
            const SizedBox(
              height: 200,
            ),
            TextField(
              controller: context.read<LoginProvider>().emailController,
              decoration: const InputDecoration(labelText: "email"),
            ),
            TextField(
              controller: context.read<LoginProvider>().passwordController,
              decoration: const InputDecoration(labelText: "password"),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<LoginProvider>().userLogin(
                        context.read<LoginProvider>().emailController.text,
                        context.read<LoginProvider>().passwordController.text,
                      );
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home19(),
                  ));
                },
                child: const Text("Send"))
          ]),
        );
      },
    );
  }
}
