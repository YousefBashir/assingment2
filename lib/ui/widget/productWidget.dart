import 'package:assingment11/data/product.dart';
import 'package:assingment11/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  ProductModel productModel;

  ProductWidget({this.productModel});

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  Color iconColor; //= Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 30),
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Image.asset(
              widget.productModel.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                widget.productModel.productName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '${widget.productModel.productPrice.toString()} \$',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 100, top: 15),
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                color: iconColor,
              ),
              iconSize: 50,
              onPressed: () {
                setState(() {
                  iconColor = Colors.red;
                  widget.productModel.isFavorite = true;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
