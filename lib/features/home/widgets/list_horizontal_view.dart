import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/home/data/model/category_model.dart';
import 'package:grocery_app/features/home/widgets/item_list_product.dart';

class ListHorizontalView extends StatelessWidget {
  final List<ProductModel> basket ;
  final  Function(ProductModel) onAdd ;
  final  Function(ProductModel) onRemove;
  const ListHorizontalView({super.key, required this.onAdd, required this.onRemove, required this.basket});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context,index){
           final model = itemProduct[index];
           final isSelected = basket.contains(model);
            return ItemListProduct(
              productModel: model,
              onTap: isSelected? onRemove : onAdd, isSelected: isSelected ,
            );
          }
      ),
    );
  }
}
