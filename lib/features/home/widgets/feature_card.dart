import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/responsive_utils.dart';
import '../models/feature_model.dart';

class FeatureCard extends StatelessWidget {
  final FeatureModel feature;

  const FeatureCard({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingM : AppDimensions.paddingL,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusM),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            IconData(feature.iconCodePoint, fontFamily: 'MaterialIcons'),
            color: AppColors.primaryOrange,
            size: isSmall ? 28 : 32,
          ),
          const SizedBox(height: AppDimensions.paddingM),
          Text(
            feature.title,
            style: AppTextTheme.titleMedium.copyWith(
              fontSize: isSmall ? 16 : 18,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingXS),
          Text(
            feature.description,
            style: AppTextTheme.bodyMedium.copyWith(
              fontSize: isSmall ? 12 : 14,
            ),
          ),
        ],
      ),
    );
  }
}
