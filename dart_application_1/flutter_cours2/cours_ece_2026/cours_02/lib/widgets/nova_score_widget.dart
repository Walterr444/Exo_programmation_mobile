import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_colors.dart';

class NovaScoreWidget extends StatelessWidget {
  final ProductNovaScore score;

  const NovaScoreWidget({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    String description;
    switch (score) {
      case ProductNovaScore.group1:
        description = 'Aliments non transformés ou transformés minimalement';
        break;
      case ProductNovaScore.group2:
        description = 'Ingrédients culinaires transformés';
        break;
      case ProductNovaScore.group3:
        description = 'Aliments transformés';
        break;
      case ProductNovaScore.group4:
        description = 'Produits alimentaires et boissons ultra-transformés';
        break;
      default:
        description = 'Inconnu';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Groupe NOVA',
          style: TextStyle(
            color: AppColors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(color: AppColors.grey2, fontSize: 13),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
