import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/responsive_utils.dart';
import '../models/testimonial_model.dart';

class TestimonialCard extends StatelessWidget {
  final TestimonialModel testimonial;

  const TestimonialCard({super.key, required this.testimonial});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXL,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusM),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: isSmall ? 24 : 28,
                backgroundImage: NetworkImage(testimonial.avatarUrl),
              ),
              const SizedBox(width: AppDimensions.paddingM),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      testimonial.name,
                      style: AppTextTheme.titleMedium.copyWith(
                        fontSize: isSmall ? 16 : 18,
                      ),
                    ),
                    Text(testimonial.title, style: AppTextTheme.bodyMedium),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.paddingM),
          Text(
            testimonial.text,
            style: AppTextTheme.bodyLarge.copyWith(fontSize: isSmall ? 14 : 16),
          ),
        ],
      ),
    );
  }
}
