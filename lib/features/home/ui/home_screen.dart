import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/models/app_colors.dart';
import 'package:grocery_app/core/models/app_images.dart';
import 'package:grocery_app/core/models/app_text_style.dart';
import 'package:grocery_app/features/home/widgets/list_horizontal_view.dart';
import 'package:grocery_app/features/home/widgets/tape_shopping_list.dart';
import '../widgets/carrosel.dart';
import '../widgets/grid_horizontal_view.dart';

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
       body: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(height: 20.h,),
             Carousel(),
             SizedBox(height: 17.h,),
             SizedBox(
               height: 110.h,
                 child: GridHorizontalView()),
             SizedBox(height: 17.h,),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal:25.w),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Fruits",style: AppTextStyle.font16,),
                   Text("See All",style: AppTextStyle.font14,),
                 ],
               ),
             ),
             SizedBox(
               height: 255.h,
               child: ListHorizontalView() ,
             ),
             TapeShoppingList(),

          ]
         ),
       ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          ]
      )
    );
  }
}
