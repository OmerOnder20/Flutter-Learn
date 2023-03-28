import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/202/service/post_model.dart';
import 'package:flutter/material.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _usedIDController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post("posts", data: postModel);

    if (response.statusCode == HttpStatus.created) {
      name = "Başarılı";
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(name ?? ""),
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: Column(children: [
        TextField(
          controller: _titleController,
          decoration: InputDecoration(labelText: "Title"),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
        ),
        TextField(
          textInputAction: TextInputAction.next,
          controller: _bodyController,
          decoration: InputDecoration(labelText: "Body"),
        ),
        TextField(
          textInputAction: TextInputAction.next,
          controller: _usedIDController,
          keyboardType: TextInputType.number,
          autofillHints: [AutofillHints.creditCardNumber],
          decoration: InputDecoration(labelText: "UsedId"),
        ),
        TextButton(
            onPressed: _isLoading
                ? null
                : () {
                    if (_titleController.text.isNotEmpty &&
                        _bodyController.text.isNotEmpty &&
                        _usedIDController.text.isNotEmpty) {
                      final model = PostModel(
                          title: _titleController.text,
                          body: _bodyController.text,
                          userId: int.tryParse(_usedIDController.text));

                      _addItemToService(model);
                    }
                  },
            child: const Text("Send"))
      ]),
    );
  }
}

class _PostModelCard extends StatelessWidget {
  const _PostModelCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}

// 9.video