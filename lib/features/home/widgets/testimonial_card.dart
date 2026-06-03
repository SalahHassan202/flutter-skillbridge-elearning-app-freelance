// File: lib/features/home/widgets/testimonial_card.dart

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
    final words = testimonial.text.split(' ');

    String beforeBest = '';
    String afterBest = '';

    if (words.length > 5) {
      beforeBest = words.take(5).join(' ');
      afterBest = words.skip(5).join(' ');
    } else {
      beforeBest = testimonial.text;
      afterBest = '';
    }

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
          RichText(
            text: TextSpan(
              children: [
                if (beforeBest.isNotEmpty)
                  TextSpan(
                    text: '$beforeBest ',
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
                if (afterBest.isNotEmpty)
                  TextSpan(
                    text: ' $afterBest',
                    style: AppTextTheme.bodyLarge.copyWith(
                      fontSize: isSmall ? 14 : 16,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
