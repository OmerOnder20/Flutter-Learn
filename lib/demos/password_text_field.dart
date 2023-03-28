import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscureText = "#";
  bool _isSecure = true;

  void _changeSecure() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      obscureText: _isSecure,
      obscuringCharacter: _obscureText,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: "Password",
          suffixIcon: _onVisibilityIcon(),
          suffix: const Text("a")),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(onPressed: _changeSecure, icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}

// suffix e benzer prefix de var onu da kullanabilirsin. 10.videoda.