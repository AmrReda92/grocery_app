import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/home/data/model/category_model.dart';

import '../../../core/models/app_colors.dart';

class ItemGridHorizontal extends StatelessWidget {
  final CategoryModel model ;
  const ItemGridHorizontal({super.key, required this.model});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
              color: AppColors.backgroundContainer,
              shape: BoxShape.circle
          ),child: Image.asset(model.image,fit: BoxFit.contain, ),
        ),
        SizedBox(height: 10.h,),
        Text(model.name)
      ],
    ) ;
  }
}
