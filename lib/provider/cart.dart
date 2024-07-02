import 'package:ahmadapi/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List<Item> selectedProducts = [];
  int price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  isempty() {
    return selectedProducts.isEmpty;
  }

  Item show(int index) {
    return selectedProducts[index];
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();

    notifyListeners();
  }

  get itemCount {
    return selectedProducts.length;
  }
}
