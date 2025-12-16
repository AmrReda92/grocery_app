import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/models/app_colors.dart';
import 'package:grocery_app/core/models/app_images.dart';
import 'package:grocery_app/core/models/app_text_style.dart';
import 'package:grocery_app/features/home/data/model/category_model.dart';
import 'package:grocery_app/features/home/widgets/item_list_product.dart';

class ListHorizontalView extends StatelessWidget {
  const ListHorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context,index){
           final model = itemProduct[index];
            return ItemListProduct(productModel: model);
          }
      ),
    );
  }
}
