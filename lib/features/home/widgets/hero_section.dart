import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/utils/responsive_utils.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);
    final bool isMedium = ResponsiveUtils.isMediumPhone(context);

    double buttonHeight = 44.0;
    if (isSmall) buttonHeight = 40.0;
    if (isMedium) buttonHeight = 44.0;

    return Container(
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXXL,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.heroTitle,
            style: AppTextTheme.headlineLarge.copyWith(
              fontSize: isSmall ? 22 : 28,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: AppDimensions.paddingM),
          Text(
            AppStrings.heroSubtitle,
            style: AppTextTheme.bodyLarge.copyWith(fontSize: isSmall ? 14 : 16),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: AppDimensions.paddingL),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryOrange,
                    foregroundColor: Colors.white,
                    minimumSize: Size(0, buttonHeight),
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.paddingS,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.borderRadiusS,
                      ),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    AppStrings.joinNow,
                    style: AppTextTheme.buttonText.copyWith(
                      fontSize: isSmall ? 13 : 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: AppDimensions.paddingM),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.primaryBlue,
                    side: const BorderSide(color: AppColors.primaryBlue),
                    minimumSize: Size(0, buttonHeight),
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.paddingS,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.borderRadiusS,
                      ),
                    ),
                  ),
                  child: Text(
                    AppStrings.startLearning,
                    style: AppTextTheme.buttonText.copyWith(
                      color: AppColors.primaryBlue,
                      fontSize: isSmall ? 13 : 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.paddingL),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.borderRadiusM),
            child: Image.network(
              AppImages.heroImage,
              height: isSmall ? 150 : 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
