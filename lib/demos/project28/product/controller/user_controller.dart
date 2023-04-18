import 'package:flutter/material.dart';

import '../model/product.dart';

class UserController extends ChangeNotifier {
  Map<Product, int> basketProducts = {};

  List<Product> get basketItems => basketProducts.keys.toList();

  double get basketTotalMoney {
    if (basketProducts.isEmpty) {
      return 0;
    } else {
      double total = 0;
      basketProducts.forEach((key, value) {
        total += key.id * value;
      });
      return total;
    }
  }

  void incrementProduct(Product product) {
    if (basketProducts.containsKey(product)) {
      basketProducts[product] = basketProducts[product]! + 1;
    } else {
      basketProducts[product] = 1;
    }
    notifyListeners();
  }

  void deincrementProduct(Product product) {
    if (!basketProducts.containsKey(product)) return;

    if (basketProducts[product]! > 1) {
      basketProducts[product] = basketProducts[product]! - 1;
    } else {
      basketProducts.remove(product);
    }

    notifyListeners();
  }
}
