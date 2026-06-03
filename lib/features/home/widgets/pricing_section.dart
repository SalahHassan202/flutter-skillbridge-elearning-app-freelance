import 'package:flutter/material.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/responsive_utils.dart';
import 'pricing_card.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveUtils.isSmallPhone(context);

    const freeFeatures = [
      'الوصول الي محتوى محدود',
      'كورس واحد مجاني',
      'شهادات اتمام',
      'دعم عبر البريد الالكتروني',
    ];

    const paidFeatures = [
      'وصول غير محدود لجميع الكورسات',
      'شهادات معتمدة',
      'مشاريع عملية',
      'دعم فني سريع',
    ];

    return Container(
      padding: EdgeInsets.all(
        isSmall ? AppDimensions.paddingL : AppDimensions.paddingXXL,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PricingCard(
                    title: 'الخطة المجانية',
                    price: 'مجانا',
                    features: freeFeatures,
                    isFree: true,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingL),
                Expanded(
                  child: PricingCard(
                    title: 'الخطة المدفوعة',
                    price: '\$9.99 / شهرًا',
                    features: paidFeatures,
                    isFree: false,
                    onPressed: () {},
                  ),
                ),
              ],
            );
          }

          return Column(
            children: [
              PricingCard(
                title: 'الخطة المجانية',
                price: 'مجانا',
                features: freeFeatures,
                isFree: true,
                onPressed: () {},
              ),
              const SizedBox(height: AppDimensions.paddingL),
              PricingCard(
                title: 'الخطة المدفوعة',
                price: '\$9.99 / شهرًا',
                features: paidFeatures,
                isFree: false,
                onPressed: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}
