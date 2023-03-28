import 'dart:developer';

import 'package:first_project_flutter/demos/project25/model/project_25_model.dart';
import 'package:first_project_flutter/demos/project25/service/project_25_service.dart';
import 'package:flutter/material.dart';

import '../view/project_25_view.dart';

abstract class Project25ViewModel extends State<Project25View> {
  bool isLoading = false;
  List<Project25Model?>? items;
  final Project25Service project25service = Project25Service();

  @override
  void initState() {
    super.initState();
    fetch25Items();
  }

  Future<void> fetch25Items() async {
    _changeLoading();

    try {
      final results = await project25service.fetchItems();
      items = results;
      inspect(results);
    } catch (e) {}
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
