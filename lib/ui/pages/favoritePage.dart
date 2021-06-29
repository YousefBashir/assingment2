import 'package:assingment11/data/product.dart';
import 'package:assingment11/models/product.dart';
import 'package:assingment11/ui/widget/productWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: ProductData.productData.getProducts().map((e) {
            if (e.isFavorite==true) {
              return ProductWidget(
                productModel: ProductModel(
                    imagePath: e.imagePath,
                    productName: e.productName,
                    productPrice: e.productPrice,
                    isFavorite: e.isFavorite),
              );
            } else {
              return Container(
                color: Colors.red,
              );
            }
          }).toList(),
        ),
      ),
    );
  }
}
