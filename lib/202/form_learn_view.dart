import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        onChanged: () {
          print("a");
        },
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: Column(children: [
          TextFormField(
            validator: FormFieldValidator().isNotEmpty,
          ),
          TextFormField(
            validator: (value) {
              return (value?.isNotEmpty ?? false) ? null : "Bu alan boş geçilemez";
            },
          ),
          DropdownButtonFormField<String>(
            validator: (value) {
              FormFieldValidator().isNotEmpty;
            },
            items: const [
              DropdownMenuItem(child: Text("x"), value: "b"),
              DropdownMenuItem(
                child: Text("y"),
                value: "b",
              )
            ],
            onChanged: (value) {},
          ),
          ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print("okey");
                }
              },
              child: const Text("Save"))
        ]),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessages()._notEmptyMessage;
  }
}

class ValidatorMessages {
  final String _notEmptyMessage = "Bu alan boş geçilemez";
}
