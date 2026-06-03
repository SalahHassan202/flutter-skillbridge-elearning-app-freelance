import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/responsive_utils.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      width: double.infinity,
      color: AppColors.footerBackground,
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXXL,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.appName,
            style: AppTextTheme.headlineMedium.copyWith(
              color: Colors.white,
              fontSize: isSmall ? 22 : 24,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingL),
          Wrap(
            spacing: AppDimensions.paddingXL,
            runSpacing: AppDimensions.paddingL,
            children: [
              _buildLinkColumn(context, AppStrings.quickLinks, [
                'الرياضية',
                'الكورسات',
                'المميزات',
                'الأسعار',
                'آراء المتعلمين',
              ]),
              _buildLinkColumn(context, AppStrings.help, [
                'الأسئلة الشائعة',
                'سياسة الخصوصية',
                'الشروط والأحكام',
                'اتصل بنا',
              ]),
            ],
          ),
          const SizedBox(height: AppDimensions.paddingL),
          const Divider(color: Colors.white24),
          const SizedBox(height: AppDimensions.paddingL),
          Text(
            AppStrings.newsletter,
            style: AppTextTheme.bodyLarge.copyWith(
              color: Colors.white,
              fontSize: isSmall ? 14 : 16,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingM),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppDimensions.borderRadiusS),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: AppStrings.emailHint,
                hintStyle: AppTextTheme.bodyMedium.copyWith(
                  fontSize: isSmall ? 12 : 14,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.paddingM,
                  vertical: AppDimensions.paddingM,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primaryBlue,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: AppDimensions.paddingL),
          Text(
            '© ${DateTime.now().year} SkillBridge. All rights reserved.',
            style: AppTextTheme.bodyMedium.copyWith(
              color: Colors.white70,
              fontSize: isSmall ? 10 : 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLinkColumn(
    BuildContext context,
    String title,
    List<String> links,
  ) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextTheme.titleMedium.copyWith(
            color: Colors.white,
            fontSize: isSmall ? 16 : 18,
          ),
        ),
        const SizedBox(height: AppDimensions.paddingM),
        ...links.map(
          (link) => Padding(
            padding: const EdgeInsets.only(bottom: AppDimensions.paddingS),
            child: Text(
              link,
              style: AppTextTheme.bodyMedium.copyWith(
                color: Colors.white70,
                fontSize: isSmall ? 12 : 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
