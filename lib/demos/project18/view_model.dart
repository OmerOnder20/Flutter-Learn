import 'package:first_project_flutter/demos/project18/model.dart';
import 'package:first_project_flutter/demos/project18/service.dart';
import 'package:flutter/material.dart';

class NewProviderViewModel extends ChangeNotifier {
  final INewService newService;

  List<Data> items = [];
  List<NewModel>? itemsss = [];

  NewProviderViewModel(this.newService) {
    _fetchItems();
  }

  Future<void> _fetchItems() async {
    items = (await newService.fetchNewItems())?.data ?? [];
  }

  Future<void> fetchhhh() async {
    itemsss = await newService.fetchhhh();
  }
}
