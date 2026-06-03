import 'package:flutter/material.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/utils/responsive_utils.dart';
import '../models/course_model.dart';
import 'course_card.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    const List<CourseModel> courses = [
      CourseModel(
        title: 'كورس التصميم الجرافيكي',
        rating: 4.9,
        reviews: 980,
        duration: '16 ساعة',
        imageUrl: AppImages.courseDesign,
      ),
      CourseModel(
        title: 'كورس تطوير الويب',
        rating: 4.9,
        reviews: 980,
        duration: '16 ساعات',
        imageUrl: AppImages.courseWeb,
      ),
      CourseModel(
        title: 'كورس التسويق الرقمي',
        rating: 4.7,
        reviews: 860,
        duration: '10 ساعة',
        imageUrl: AppImages.courseMarketing,
      ),
    ];

    return Container(
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXXL,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.coursesTitle,
            style: AppTextTheme.headlineMedium.copyWith(
              fontSize: isSmall ? 22 : 24,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingL),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: courses.length,
            separatorBuilder: (_, __) =>
                const SizedBox(height: AppDimensions.paddingM),
            itemBuilder: (context, index) => CourseCard(course: courses[index]),
          ),
        ],
      ),
    );
  }
}
