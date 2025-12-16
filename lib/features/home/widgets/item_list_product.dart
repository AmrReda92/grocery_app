import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/features/home/data/model/category_model.dart';

import '../../../core/models/app_colors.dart';
import '../../../core/models/app_images.dart';
import '../../../core/models/app_text_style.dart';

class ItemListProduct extends StatelessWidget {
  final  Function(ProductModel) onTap ;
  final ProductModel productModel ;
  final bool isSelected ;
  const ItemListProduct({super.key, required this.productModel, required this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundContainer,
                        borderRadius: BorderRadius.circular(10.r)
                    ),child: Image.asset(productModel.image,fit: BoxFit.contain,),
                  ),
                  Positioned(
                      bottom: 10.h,
                      right: 8,
                      child: GestureDetector(
                        onTap: (){
                          onTap(productModel);
                        } ,
                        child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Colors.white,
                            child: isSelected ? Icon(Icons.close,size:20 ,color: Colors.black,) : Icon(Icons.add,size:20 ,color: Colors.black,)
                        ),
                      )
                  )
                ],
              ),
              SizedBox(height: 14.h,),
              SizedBox(
                width: 140.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productModel.name,style: AppTextStyle.font16,),
                    SizedBox(height: 8.h,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(AppImages.star, colorFilter: const ColorFilter.mode(
                          Colors.amber,
                          BlendMode.srcIn,
                        ),),
                        SizedBox(width: 8.w,),
                        Text(productModel.rate,style: AppTextStyle.font14.copyWith(color: Colors.black),),
                        SizedBox(width: 4.w,),
                        Text(productModel.rateNumbers,style: AppTextStyle.font14.copyWith(color: Colors.black),),
                      ],
                    ),
                    SizedBox(height: 8.w,),
                    Text(productModel.price,style: AppTextStyle.font16,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ) ;
  }
}
