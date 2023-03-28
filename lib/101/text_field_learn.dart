import 'package:first_project_flutter/product/language/language_items.dart';
import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldone = FocusNode();
  FocusNode focusNodeTextFieldtwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: 20,
              focusNode: focusNodeTextFieldone,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: _InputDecorator().emailInput),
          TextFormField(
            focusNode: focusNodeTextFieldtwo,
            minLines: 2,
            maxLines: 4,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

//6.video text field ve properties tekrardan izle.
//fillColor: Colors.white
//filled: true

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
