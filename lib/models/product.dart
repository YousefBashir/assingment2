import 'package:flutter/cupertino.dart';

class ProductModel {
  String imagePath;
  String productName;
  num productPrice;
  bool isFavorite;

  ProductModel(
      {this.imagePath, this.productName, this.productPrice, this.isFavorite});
}
