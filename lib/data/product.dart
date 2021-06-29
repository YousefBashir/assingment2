import 'package:assingment11/models/product.dart';

class ProductData {
  ProductData._();

  static final ProductData productData = ProductData._();
  List<ProductModel> products = <ProductModel>[
    ProductModel(
      imagePath: 'assets/images/image1.jpg',
      productName: 'P_T-Shirt ',
      productPrice: 50,
      isFavorite: false,
    ),
    ProductModel(
      imagePath: 'assets/images/image2.jpg',
      productName: 'Row T-Shirt',
      productPrice: 80,
      isFavorite: false,
    ),
    ProductModel(
      imagePath: 'assets/images/image3.jpg',
      productName: 'Red T-Shirt',
      productPrice: 20,
      isFavorite: false,
    ),
  ];

  List<ProductModel> getProducts() {
    return products;
  }
}
