import 'package:first_project_flutter/demos/project16/project_16_model.dart';
import 'package:first_project_flutter/demos/project16/project_16_service.dart';
import 'package:flutter/foundation.dart';

class Project16Provider extends ChangeNotifier {
  final IProject16Service service;
  List<Project16Model>? project16Datas = [];
  bool isLoading = false;
  bool appearRealDatas = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Project16Provider(this.service) {
    _fetchProject16();
  }

  void changeAppearDatas() {
    appearRealDatas = true;
    notifyListeners();
  }

  void appearDatas() {
    changeAppearDatas();
  }

  Future<void> _fetchProject16() async {
    changeLoading();
    project16Datas = await service.fetchItems();
    changeLoading();
  }
}
