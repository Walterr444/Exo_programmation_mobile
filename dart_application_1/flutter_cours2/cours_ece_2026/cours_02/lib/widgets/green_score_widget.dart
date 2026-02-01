import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_icons.dart';

class GreenScoreWidget extends StatelessWidget {
  final ProductGreenScore score;

  const GreenScoreWidget({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    IconData icon;
    Color color;
    String description;

    switch (score) {
      case ProductGreenScore.APlus:
        icon = AppIcons.ecoscore_a_plus;
        color = AppColors.greenScoreAPlus;
        description = 'Très faible impact environnemental';
        break;
      case ProductGreenScore.A:
        icon = AppIcons.ecoscore_a;
        color = AppColors.greenScoreA;
        description = 'Très faible impact environnemental';
        break;
      case ProductGreenScore.B:
        icon = AppIcons.ecoscore_b;
        color = AppColors.greenScoreB;
        description = 'Faible impact environnemental';
        break;
      case ProductGreenScore.C:
        icon = AppIcons.ecoscore_c;
        color = AppColors.greenScoreC;
        description = 'Impact modéré sur l\'environnement';
        break;
      case ProductGreenScore.D:
        icon = AppIcons.ecoscore_d;
        color = AppColors.greenScoreD;
        description = 'Impact environnemental élevé';
        break;
      case ProductGreenScore.E:
        icon = AppIcons.ecoscore_e;
        color = AppColors.greenScoreE;
        description = 'Impact environnemental très élevé';
        break;
      case ProductGreenScore.F:
        icon = AppIcons.ecoscore_f;
        color = AppColors.greenScoreF;
        description = 'Impact environnemental très élevé';
        break;
      default:
        icon = Icons.help_outline;
        color = AppColors.grey2;
        description = 'Inconnu';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'EcoScore',
          style: TextStyle(
            color: AppColors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                description,
                style: const TextStyle(color: AppColors.grey2, fontSize: 13),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
