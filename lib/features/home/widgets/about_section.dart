import 'package:flutter/material.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
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
          Text(
            AppStrings.aboutTitle,
            style: AppTextTheme.headlineMedium.copyWith(
              fontSize: isSmall ? 22 : 24,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingM),
          Text(
            AppStrings.aboutDescription,
            style: AppTextTheme.bodyLarge.copyWith(fontSize: isSmall ? 14 : 16),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
