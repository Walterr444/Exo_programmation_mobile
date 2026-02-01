import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/widgets/app_divider.dart';
import 'package:formation_flutter/widgets/green_score_widget.dart';
import 'package:formation_flutter/widgets/nova_score_widget.dart';
import 'package:formation_flutter/widgets/nutriscore_widget.dart';

class SummaryBanner extends StatelessWidget {
  final Product product;

  const SummaryBanner({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey1.withOpacity(0.5),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  flex: 44,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: NutriScoreWidget(
                      score: product.nutriScore ?? ProductNutriScore.unknown,
                    ),
                  ),
                ),
                const AppDivider(axis: Axis.vertical),
                Expanded(
                  flex: 56,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: NovaScoreWidget(
                      score: product.novaScore ?? ProductNovaScore.unknown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const AppDivider(axis: Axis.horizontal),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GreenScoreWidget(
              score: product.greenScore ?? ProductGreenScore.unknown,
            ),
          ),
        ],
      ),
    );
  }
}
