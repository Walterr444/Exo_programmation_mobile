import 'package:flutter/material.dart';
import 'package:formation_flutter/res/app_colors.dart';

class ProductHeader extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String? altName;
  final String brandName;

  const ProductHeader({
    super.key,
    required this.imageUrl,
    required this.productName,
    this.altName,
    required this.brandName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image de fond
        Image.network(
          imageUrl,
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
                  productName,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  brandName,
                  style: const TextStyle(fontSize: 18, color: AppColors.grey2),
                ),
                if (altName != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    altName!,
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
