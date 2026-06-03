// File: lib/features/home/widgets/hero_section.dart

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
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ابدأ رحلتك نحو ',
                  style: AppTextTheme.headlineLarge.copyWith(
                    fontSize: isSmall ? 22 : 28,
                    color: AppColors.textDark,
                  ),
                ),
                TextSpan(
                  text: 'مهارة جديدة',
                  style: AppTextTheme.headlineLarge.copyWith(
                    fontSize: isSmall ? 22 : 28,
                    color: AppColors.primaryOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' و ',
                  style: AppTextTheme.headlineLarge.copyWith(
                    fontSize: isSmall ? 22 : 28,
                    color: AppColors.textDark,
                  ),
                ),
                TextSpan(
                  text: 'فرصة عمل',
                  style: AppTextTheme.headlineLarge.copyWith(
                    fontSize: isSmall ? 22 : 28,
                    color: AppColors.primaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' أفضل',
                  style: AppTextTheme.headlineLarge.copyWith(
                    fontSize: isSmall ? 22 : 28,
                    color: AppColors.primaryOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: AppDimensions.paddingM),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'تعلم مهارات عملية معالجة في سوق العمل من خلال كراسات قصيرة ومحتوى عملي يساعدك على الوصول إلى ',
                  style: AppTextTheme.bodyLarge.copyWith(
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: 'فرص عمل حرة',
                  style: AppTextTheme.bodyLarge.copyWith(
                    color: AppColors.primaryOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: ' وتحقيق ',
                  style: AppTextTheme.bodyLarge.copyWith(
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: 'دخل',
                  style: AppTextTheme.bodyLarge.copyWith(
                    color: AppColors.primaryBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
                TextSpan(
                  text: ' من مهاراتك',
                  style: AppTextTheme.bodyLarge.copyWith(
                    fontSize: isSmall ? 14 : 16,
                  ),
                ),
              ],
            ),
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
