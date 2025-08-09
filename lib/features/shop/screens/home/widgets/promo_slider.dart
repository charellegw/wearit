import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/buttons/carousel_buttons.dart';
import 'package:wearit/components/widgets/images/image_slide.dart';
import 'package:wearit/features/shop/controllers/home/home_controller.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 0.95,
              enlargeCenterPage: true,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)),
          items: banners.map((url) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: TImageSlide(imagePath: url, fit: BoxFit.cover,),
          ),).toList(),
        ),
        Obx(() => Positioned(
          bottom: TSizes.defaultGap,
          right: 0,
          left: 0,
          child: Center(
            child: TCarouselButtons(
              currentIndex: controller.carouselCurrentIndex.value, totalSlide: banners.length,
            ),
          ),
        )),
      ],
    );
  }
}
