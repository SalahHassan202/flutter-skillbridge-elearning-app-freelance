import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/responsive_utils.dart';
import '../models/course_model.dart';

class CourseCard extends StatelessWidget {
  final CourseModel course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusM),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppDimensions.borderRadiusM),
            ),
            child: Image.network(
              course.imageUrl,
              height: isSmall ? 120 : 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              isSmall ? AppDimensions.paddingM : AppDimensions.paddingL,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,
                  style: AppTextTheme.titleMedium.copyWith(
                    fontSize: isSmall ? 16 : 18,
                  ),
                ),
                const SizedBox(height: AppDimensions.paddingXS),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: AppColors.starColor,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${course.rating}',
                      style: AppTextTheme.bodyMedium.copyWith(
                        color: AppColors.textDark,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text('★★'),
                    const SizedBox(width: 8),
                    Text('(${course.reviews})', style: AppTextTheme.bodyMedium),
                    const Spacer(),
                    Text(course.duration, style: AppTextTheme.bodyMedium),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
