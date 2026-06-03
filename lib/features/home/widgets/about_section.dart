// File: lib/features/home/widgets/about_section.dart

import 'package:flutter/material.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/utils/responsive_utils.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXXL,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Skill',
                  style: AppTextTheme.headlineMedium.copyWith(
                    color: AppColors.primaryBlue,
                    fontSize: isSmall ? 22 : 24,
                  ),
                ),
                TextSpan(
                  text: 'Bridge',
                  style: AppTextTheme.headlineMedium.copyWith(
                    color: AppColors.primaryOrange,
                    fontSize: isSmall ? 22 : 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimensions.paddingM),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'هي منصة تعليمية إلكترونية تقدم كراسات قصيرة وعملية في مجالات التخصص: البرمجة، التنسيق الرقمي وغيرها. تستند كل من مهارات حقيقية من خبرة المثال وتطبيقاتها في مشاريع عملية تنتج لك أموال العمل الحر. ',
                  style: AppTextTheme.bodyLarge.copyWith(
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: 'افضل',
                  style: AppTextTheme.bodyLarge.copyWith(
                    color: AppColors.primaryOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: ' منصة هتتعامل معاها',
                  style: AppTextTheme.bodyLarge.copyWith(
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
