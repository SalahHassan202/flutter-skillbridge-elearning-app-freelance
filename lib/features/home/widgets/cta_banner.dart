// File: lib/features/home/widgets/cta_banner.dart

import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/responsive_utils.dart';

class CtaBanner extends StatelessWidget {
  const CtaBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      margin: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXXL,
      ),
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXL,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primaryBlue, AppColors.primaryOrange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusL),
      ),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ابدأ ',
                  style: AppTextTheme.headlineMedium.copyWith(
                    color: Colors.white,
                    fontSize: isSmall ? 22 : 24,
                  ),
                ),
                TextSpan(
                  text: 'الآن',
                  style: AppTextTheme.headlineMedium.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isSmall ? 22 : 24,
                  ),
                ),
                TextSpan(
                  text: ' مجانا',
                  style: AppTextTheme.headlineMedium.copyWith(
                    color: Colors.white,
                    fontSize: isSmall ? 22 : 24,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.paddingM),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'انضم إلى آلاف المتعلمين وابدأ رحلتك نحو ',
                  style: AppTextTheme.bodyLarge.copyWith(
                    color: Colors.white70,
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: 'مستقبل أفضل',
                  style: AppTextTheme.bodyLarge.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.paddingL),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.primaryBlue,
              padding: EdgeInsets.symmetric(
                horizontal: isSmall
                    ? AppDimensions.paddingL
                    : AppDimensions.paddingXL,
                vertical: isSmall
                    ? AppDimensions.paddingM
                    : AppDimensions.paddingL,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppDimensions.borderRadiusS,
                ),
              ),
              elevation: 0,
            ),
            child: Text(
              AppStrings.ctaButton,
              style: AppTextTheme.buttonText.copyWith(
                color: AppColors.primaryBlue,
                fontSize: isSmall ? 14 : 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
