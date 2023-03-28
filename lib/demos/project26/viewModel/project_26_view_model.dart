import 'dart:developer';

import 'package:flutter/material.dart';

import '../model/project_26_model.dart';
import '../service/project_26_service.dart';

class Provider26 extends ChangeNotifier {
  final project26service = Project26Service();
  List<Data>? items26 = [];

  Future<void> fetch26Items() async {
    items26 = await project26service.fetch26();
    inspect(items26);
    notifyListeners();
  }
}
