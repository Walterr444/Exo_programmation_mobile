import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_images.dart';

class NutriScoreWidget extends StatelessWidget {
  final ProductNutriScore score;

  const NutriScoreWidget({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    String? imagePath;
    switch (score) {
      case ProductNutriScore.A:
        imagePath = AppImages.nutriscoreA;
        break;
      case ProductNutriScore.B:
        imagePath = AppImages.nutriscoreB;
        break;
      case ProductNutriScore.C:
        imagePath = AppImages.nutriscoreC;
        break;
      case ProductNutriScore.D:
        imagePath = AppImages.nutriscoreD;
        break;
      case ProductNutriScore.E:
        imagePath = AppImages.nutriscoreE;
        break;
      default:
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nutri-Score',
          style: TextStyle(
            color: AppColors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        if (imagePath != null)
          Image.asset(imagePath, height: 48)
        else
          const Text('Inconnu'),
      ],
    );
  }
}
