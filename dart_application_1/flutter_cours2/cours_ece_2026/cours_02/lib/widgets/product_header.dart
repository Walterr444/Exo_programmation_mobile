import 'package:flutter/material.dart';
import 'package:formation_flutter/res/app_colors.dart';

import 'package:formation_flutter/model/product_view_model.dart';
import 'package:provider/provider.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final product = context.read<ProductViewModel>().product!;

    return Stack(
      children: [
        // Image de fond
        Image.network(
          product.picture!,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        // Carte avec les coins arrondis
        Container(
          margin: const EdgeInsets.only(top: 270),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product.name!,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.brands!.first,
                  style: const TextStyle(fontSize: 18, color: AppColors.grey2),
                ),
                if (product.altName != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    product.altName!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.grey3,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        // Boutons de navigation (simulés comme dans l'image)
        Positioned(
          top: 40,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        const Positioned(
          top: 40,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: null,
          ),
        ),
      ],
    );
  }
}
