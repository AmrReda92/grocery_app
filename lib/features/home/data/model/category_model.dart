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


class ProductModel {
  final String name;
  final String image;
  final String rate;
  final String rateNumbers;
  final String price;


  ProductModel({required this.name,required this.image,required this.rate, required this.rateNumbers, required this.price});

}

final List<ProductModel> itemProduct =
[
  ProductModel(
      name: "Banana",
      image: AppImages.banana,
      rate: "4.8",
      rateNumbers: "(287)",
      price: "\$ 3.88"
  ),
  ProductModel(
      name: "Pepper",
      image: AppImages.pepper,
      rate: "4.8",
      rateNumbers: "(287)",
      price: "\$ 2.88"
  ),
  ProductModel(
      name: "Orange",
      image: AppImages.orange,
      rate: "4.8",
      rateNumbers: "(287)",
      price: "\$ 3.18"
  ),
  ProductModel(
      name: "Purex",
      image: AppImages.purex,
      rate: "4.8",
      rateNumbers: "(287)",
      price: "\$ 4.88"
  ),
];