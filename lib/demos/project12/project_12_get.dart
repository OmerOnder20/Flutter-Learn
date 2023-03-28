import 'package:dio/dio.dart';
import 'package:first_project_flutter/demos/project12/comments_learn_view_12.dart';
import 'package:first_project_flutter/demos/project12/post_model_demo_1.dart';
import 'package:first_project_flutter/demos/project12/project_12_service_models.dart';
import 'package:flutter/material.dart';

class Project12 extends StatefulWidget {
  const Project12({super.key});

  @override
  State<Project12> createState() => _Project12State();
}

class _Project12State extends State<Project12> {
  List<PostDemoModel>? _items;
  bool _isLoading = false;
  late Dio _networkManager;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  late final IpostService _serviceModel;

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    _serviceModel = ServiceModels();
    getItems();
  }

  void getItems() async {
    _changeLoading();
    _items = await _serviceModel.fetchItems();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CommentViewLearn12(postId: 12),
                ));
              },
              title: Text(_items?[index].title ?? ""),
              subtitle: Text(_items?[index].body ?? ""),
              trailing: Text(_items?[index].id.toString() ?? ""),
            ),
          );
        },
      ),
    );
  }
}
