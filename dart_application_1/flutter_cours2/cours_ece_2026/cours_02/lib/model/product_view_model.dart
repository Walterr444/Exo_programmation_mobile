import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:formation_flutter/model/product.dart';

class ProductViewModel extends ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  ProductViewModel() {
    loadProduct();
  }

  Future<void> loadProduct() async {
    try {
      final dio = Dio();
      final response = await dio.get(
        'https://api.formation-flutter.fr/v2/getProduct',
        queryParameters: {'barcode': '5000159484695'},
      );

      if (response.statusCode == 200) {
        // Selon l'étape 3 : Conversion String -> Map (même si Dio le fait souvent seul)
        final Map<String, dynamic> jsonData = response.data is String
            ? jsonDecode(response.data)
            : response.data;

        // Étape 4 : Conversion de la réponse brute vers l'objet Product
        final productResponse = ProductResponse.fromJSON(jsonData);
        _product = productResponse.product;
      }
    } catch (e) {
      debugPrint('Erreur réseau : $e');
    }

    notifyListeners();
  }
}
