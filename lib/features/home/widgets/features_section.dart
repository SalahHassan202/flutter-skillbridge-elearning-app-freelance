import 'package:flutter/material.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/responsive_utils.dart';
import '../models/feature_model.dart';
import 'feature_card.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    const List<FeatureModel> features = [
      FeatureModel(
        title: 'تعلم سريع',
        description:
            'كراسات قصيرة ومركزة تساعدك على التعلم بكفاءة وتوفير الوقت.',
        iconCodePoint: 0xe1c9,
      ),
      FeatureModel(
        title: 'محتوى عملي',
        description:
            'تعلم من خلال تطبيقات ومشاريع حقيقية تعزز من مهاراتك وخبراتك.',
        iconCodePoint: 0xe8f9,
      ),
      FeatureModel(
        title: 'شهادات إتمام',
        description: 'احصل على شهادة معتمدة بعد إتمام كل كراسة.',
        iconCodePoint: 0xe86c,
      ),
      FeatureModel(
        title: 'فرص عمل بعد التعلم',
        description: 'لربطك بفرص عمل حرة ومشاريع حقيقية لبناء مسارات حقيقية.',
        iconCodePoint: 0xeb7b,
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
            AppStrings.featuresTitle,
            style: AppTextTheme.headlineMedium.copyWith(
              fontSize: isSmall ? 22 : 24,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingL),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth < 500 ? 1 : 2;
              double childAspectRatio = constraints.maxWidth < 500 ? 2.8 : 1.3;

              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: AppDimensions.paddingM,
                  mainAxisSpacing: AppDimensions.paddingM,
                  childAspectRatio: childAspectRatio,
                ),
                itemCount: features.length,
                itemBuilder: (context, index) =>
                    FeatureCard(feature: features[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
