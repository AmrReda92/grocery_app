import 'package:flutter/material.dart';
import 'package:grocery_app/features/home/data/model/category_model.dart';
import 'package:grocery_app/features/home/widgets/item_grid_horizontal.dart';

class GridHorizontalView extends StatelessWidget {
  const GridHorizontalView({super.key,});



  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
         itemCount: item.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          mainAxisSpacing: 14,
        ),
        itemBuilder: (context,index){
          final itemCategory = item[index];
           return ItemGridHorizontal(model: itemCategory);
        }
    );
  }
}
