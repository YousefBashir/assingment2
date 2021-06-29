import 'package:assingment11/data/product.dart';
import 'package:assingment11/models/product.dart';
import 'package:assingment11/ui/widget/productWidget.dart';
import 'package:flutter/cupertino.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: ProductData.productData
            .getProducts()
            .map((e) => ProductWidget(
                  productModel: ProductModel(
                      imagePath: e.imagePath,
                      productName: e.productName,
                      productPrice: e.productPrice,
                      isFavorite: e.isFavorite),
                ))
            .toList(),
      ),
    );
  }
}
