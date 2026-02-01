import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';

class ProductViewModel extends ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  ProductViewModel() {
    loadProduct();
  }

  void loadProduct() async {
    // Simulation d'un délai réseau
    await Future.delayed(const Duration(seconds: 2));

    final baseProduct = generateProduct();
    _product = Product(
      barcode: baseProduct.barcode,
      name: 'Petits pois et carottes',
      altName: 'Petits pois et carottes à l\'étuvée avec garniture',
      brands: ['Cassegrain'],
      picture:
          'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      nutriScore: ProductNutriScore.A,
      novaScore: ProductNovaScore.group4,
      greenScore: ProductGreenScore.D,
    );

    notifyListeners();
  }
}
