import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/widgets/product_header.dart';
import 'package:formation_flutter/widgets/summary_banner.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    // On génère un produit d'exemple pour l'exercice
    final product = generateProduct();
    // On personnalise pour correspondre à l'image demandée
    final displayProduct = Product(
      barcode: product.barcode,
      name: 'Petits pois et carottes',
      altName: 'Petits pois et carottes à l\'étuvée avec garniture',
      brands: ['Cassegrain'],
      picture:
          'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      nutriScore: ProductNutriScore.A,
      novaScore: ProductNovaScore.group4,
      greenScore: ProductGreenScore.D,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductHeader(
              imageUrl: displayProduct.picture!,
              productName: displayProduct.name!,
              altName: displayProduct.altName,
              brandName: displayProduct.brands!.first,
            ),
            SummaryBanner(product: displayProduct),
          ],
        ),
      ),
    );
  }
}
