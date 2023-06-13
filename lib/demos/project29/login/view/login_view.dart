import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewModel/login_provider.dart';

class Login29 extends StatefulWidget {
  const Login29({super.key});

  @override
  State<Login29> createState() => _Login29State();
}

class _Login29State extends State<Login29> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "email", border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: "password", border: OutlineInputBorder()),
              ),
            ),
            FloatingActionButton(
              child: const Icon(Icons.check),
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  context.read<Login29Provider>().fetchUserLogin29(emailController.text, passwordController.text);
                }
              },
            )
          ]),
        ),
      ),
    );
  }
}
