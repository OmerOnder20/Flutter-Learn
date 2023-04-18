import 'package:flutter/material.dart';

import '../../product/model/product.dart';
import '../../product/service/user_service.dart';

class ProductsViewModel extends ChangeNotifier {
  final UserService userService;
  bool isLoading = false;
  List<Product> productItems = [];

  ProductsViewModel(this.userService) {
    getProductItems();
  }

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> getProductItems() async {
    changeLoading();
    productItems = (await userService.fetchItems())?.products ?? [];
    changeLoading();
  }
}
