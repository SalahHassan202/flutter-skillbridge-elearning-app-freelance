import 'package:flutter/material.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/utils/responsive_utils.dart';
import '../models/testimonial_model.dart';
import 'testimonial_card.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    const List<TestimonialModel> testimonials = [
      TestimonialModel(
        text:
            'كورسات SkillBridge غيرت حياتي، تعلمت التصميم وبدأت أعمل على مشاريع حقيقية.',
        name: 'Ahmed Mohamed',
        title: 'Graphic designer',
        avatarUrl: AppImages.avatar1,
      ),
      TestimonialModel(
        text: 'أفضل منصة تعلمت منها البرمجة، الشرح بسيط والمحتوى عملي جداً.',
        name: 'Sara Ali',
        title: 'Web Developer',
        avatarUrl: AppImages.avatar2,
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
            AppStrings.testimonialsTitle,
            style: AppTextTheme.headlineMedium.copyWith(
              fontSize: isSmall ? 22 : 24,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingL),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: testimonials.length,
            separatorBuilder: (_, __) =>
                const SizedBox(height: AppDimensions.paddingM),
            itemBuilder: (context, index) =>
                TestimonialCard(testimonial: testimonials[index]),
          ),
        ],
      ),
    );
  }
}
