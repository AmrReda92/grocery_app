import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/models/app_colors.dart';
import '../../../core/models/app_images.dart';
import '../../../core/models/app_text_style.dart';
import '../data/model/category_model.dart';

class TapeShoppingList extends StatelessWidget {
  final List<ProductModel> basket;
  const TapeShoppingList({super.key, required this.basket});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            color: AppColors.tapeBackGround
        ),
        height: 70.h,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:16.w),
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: basket.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.w),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.backgroundContainer
                            ),
                          ),
                          CircleAvatar(
                            radius: 18.r,
                            backgroundImage: AssetImage(basket[index].image),
                          ),
                        ],
                      ),
                    ) ;
                  },
                ),
              ),
              SizedBox(width: 10.w,),
              Row(
                children: [
                  VerticalDivider(
                    thickness: 1.5.w,
                    endIndent: 16.h,
                    indent: 16.h,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8.w,),
                  Text("View Basket",
                    style: AppTextStyle.font16.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(width: 8.w,),
                  Badge(
                    label: Text(basket.length.toString(),style: TextStyle(fontSize: 14.sp),),
                    child: SvgPicture.asset(AppImages.shopping,width: 30.w,colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,  // or srcATop, multiply, overlay, etc.
                    ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
    );
  }
}
