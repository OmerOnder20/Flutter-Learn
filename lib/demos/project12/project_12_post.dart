import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project12/post_model_demo_1.dart';
import 'package:first_project_flutter/demos/project12/project_12_service_models.dart';
import 'package:flutter/material.dart';

class Project12Post extends StatefulWidget {
  const Project12Post({super.key});

  @override
  State<Project12Post> createState() => _Project12PostState();
}

class _Project12PostState extends State<Project12Post> {
  late final Dio _networkManager;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";
  late final IpostService _serviceModel;

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    _serviceModel = ServiceModels();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _usedIdController = TextEditingController();

  Future<void> _postToService(PostDemoModel postDemoModel) async {
    _serviceModel.postToService(postDemoModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
          ),
          TextField(controller: _bodyController),
          TextField(controller: _usedIdController),
          TextButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty &&
                    _bodyController.text.isNotEmpty &&
                    _usedIdController.text.isNotEmpty) {
                  final model = PostDemoModel(
                      body: _bodyController.text,
                      title: _titleController.text,
                      userId: int.tryParse(_usedIdController.text));

                  _postToService(model);
                }
              },
              child: const Text("Gönder"))
        ],
      ),
    );
  }
}
