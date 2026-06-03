import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/responsive_utils.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveUtils.isSmallPhone(context)
            ? AppDimensions.paddingM
            : AppDimensions.paddingXL,
        vertical: AppDimensions.paddingM,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFE5E7EB), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.appName,
            style: AppTextTheme.headlineSmall.copyWith(
              color: AppColors.primaryBlue,
              fontSize: ResponsiveUtils.isSmallPhone(context) ? 18 : 20,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveUtils.isSmallPhone(context)
                        ? AppDimensions.paddingS
                        : AppDimensions.paddingM,
                  ),
                ),
                child: Text(
                  'Login',
                  style: AppTextTheme.linkText.copyWith(
                    fontSize: ResponsiveUtils.isSmallPhone(context) ? 12 : 14,
                  ),
                ),
              ),
              const SizedBox(width: AppDimensions.paddingS),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryOrange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveUtils.isSmallPhone(context)
                        ? AppDimensions.paddingM
                        : AppDimensions.paddingL,
                    vertical: AppDimensions.paddingXS,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      AppDimensions.borderRadiusS,
                    ),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Sign Up',
                  style: AppTextTheme.buttonText.copyWith(
                    fontSize: ResponsiveUtils.isSmallPhone(context) ? 12 : 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
