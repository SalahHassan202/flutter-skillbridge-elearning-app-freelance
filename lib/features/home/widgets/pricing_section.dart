import 'package:flutter/material.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/responsive_utils.dart';
import 'pricing_card.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  static void _onFreePressed() {}

  static void _onPaidPressed() {}

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
      child: Column(
        children: [
          const PricingCard(
            title: 'الخطة المجانية',
            price: 'مجانا',
            features: freeFeatures,
            isFree: true,
            onPressed: _onFreePressed,
          ),
          const SizedBox(height: AppDimensions.paddingL),
          const PricingCard(
            title: 'الخطة المدفوعة',
            price: '\$9.99 / شهرًا',
            features: paidFeatures,
            isFree: false,
            onPressed: _onPaidPressed,
          ),
        ],
      ),
    );
  }
}
