import 'package:flutter/material.dart';
import 'package:formation_flutter/res/app_colors.dart';

class AppDivider extends StatelessWidget {
  final Axis axis;

  const AppDivider({super.key, this.axis = Axis.horizontal});

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.horizontal) {
      return Container(height: 1, color: AppColors.grey1);
    } else {
      return Container(width: 1, color: AppColors.grey1);
    }
  }
}
