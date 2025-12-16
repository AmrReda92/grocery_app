import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/models/app_colors.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

 static const List<String> sliders = [
    "assets/home/slider1.png",
    "assets/home/slider2.png",
    "assets/home/slider3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.backgroundContainer
      ),
      child: CarouselSlider.builder(
        itemCount: sliders.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
          return Image.asset(sliders[itemIndex]);
        }, options: CarouselOptions(
        viewportFraction: 0.7,
        height: 190.h,
        aspectRatio: 1,
        autoPlay: true,
        enlargeFactor: 0.25,
        enableInfiniteScroll: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(seconds:3),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
      ),

      ),
    );
  }
}
