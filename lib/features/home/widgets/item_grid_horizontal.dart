import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/core/models/app_text_style.dart';
import 'package:grocery_app/features/home/data/model/category_model.dart';

import '../../../core/models/app_colors.dart';

class ItemGridHorizontal extends StatelessWidget {
  final bool isSelected;
  final CategoryModel model ;
  final void Function()? onTap;
  const ItemGridHorizontal({super.key, required this.model, required this.isSelected, this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Container(
              width: 70.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: isSelected? Colors.green: AppColors.backgroundContainer,
                  shape: BoxShape.circle
              ),child: Image.asset(model.image,fit: BoxFit.contain, ),
            ),

          SizedBox(height: 10.h,),
          Text(model.name,style: isSelected?  AppTextStyle.font16.copyWith(color: Colors.green): AppTextStyle.font16.copyWith(color: Color(0xff5A5555),))
        ],
      ),
    ) ;
  }
}
