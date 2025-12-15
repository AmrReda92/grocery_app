import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/models/app_images.dart';
import 'package:grocery_app/core/models/app_text_style.dart';

import '../widgets/carrosel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Padding(
           padding:  EdgeInsets.symmetric(horizontal: 20.w),
           child: Row(
             children: [
              SvgPicture.asset(AppImages.motor),
               SizedBox(width: 10.w,),
               Text("61 Hopper street..",style: AppTextStyle.font19,),
               SizedBox(width: 10.w,),
               SvgPicture.asset(AppImages.arrowDown),
               Spacer(),
               SvgPicture.asset(AppImages.shopping),
             ],
           ),
         ),
       ),
       body: Column(
         children: [
           SizedBox(height: 20.h,),
           Carousel(),


        ]
       ),
    );
  }
}
