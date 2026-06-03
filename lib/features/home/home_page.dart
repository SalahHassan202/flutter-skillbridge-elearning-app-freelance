import 'package:flutter/material.dart';
import 'widgets/navbar_widget.dart';
import 'widgets/hero_section.dart';
import 'widgets/about_section.dart';
import 'widgets/features_section.dart';
import 'widgets/courses_section.dart';
import 'widgets/testimonials_section.dart';
import 'widgets/pricing_section.dart';
import 'widgets/cta_banner.dart';
import 'widgets/footer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            NavbarWidget(),
            HeroSection(),
            AboutSection(),
            FeaturesSection(),
            CoursesSection(),
            TestimonialsSection(),
            PricingSection(),
            CtaBanner(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
