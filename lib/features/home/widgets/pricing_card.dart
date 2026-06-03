import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/responsive_utils.dart';

class PricingCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final bool isFree;
  final VoidCallback onPressed;

  const PricingCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.isFree,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXL,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusM),
        // ignore: deprecated_member_use
        border: Border.all(color: AppColors.primaryBlue.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextTheme.headlineSmall.copyWith(
              fontSize: isSmall ? 20 : 22,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingS),
          Text(
            price,
            style: AppTextTheme.headlineMedium.copyWith(
              color: AppColors.primaryOrange,
              fontSize: isSmall ? 22 : 24,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingM),
          ...features.map(
            (feature) => Padding(
              padding: const EdgeInsets.only(bottom: AppDimensions.paddingXS),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: AppColors.primaryBlue,
                    size: 18,
                  ),
                  const SizedBox(width: AppDimensions.paddingXS),
                  Expanded(
                    child: Text(
                      feature,
                      style: AppTextTheme.bodyMedium.copyWith(
                        fontSize: isSmall ? 12 : 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppDimensions.paddingL),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: isFree
                    ? AppColors.primaryOrange
                    : AppColors.primaryBlue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
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
                isFree ? 'ابدأ مجانا' : 'اشترك الآن',
                style: AppTextTheme.buttonText.copyWith(
                  fontSize: isSmall ? 14 : 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
