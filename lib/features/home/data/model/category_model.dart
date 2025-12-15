import '../../../../core/models/app_images.dart';

class CategoryModel {
  final String name ;
  final String image ;

  CategoryModel({required this.name,required this.image});

}

 final List<CategoryModel> item = [

  CategoryModel(
    name: "Fruits",
    image: AppImages.fruit,
  ),
  CategoryModel(
    name: "Milk & egg",
    image: AppImages.milk,
  ),
  CategoryModel(
    name: "beverages",
    image: AppImages.beverages,
  ),
  CategoryModel(
    name: "Laundry",
    image: AppImages.laundry,
  ),
  CategoryModel(
    name: "Vegetables",
    image: AppImages.vegetables,
  ),

];