import 'package:flutter/material.dart';

import '../model/project_25_model.dart';
import '../service/project_25_service.dart';

class Provider25 extends ChangeNotifier {
  final project25service = Project25Service();
  List<Project25Model?>? items25 = [];

  Future<void> fetch25Items() async {
    try {
      final results = await project25service.fetchItems();
      items25 = results;
    } catch (e) {}
  }
}
