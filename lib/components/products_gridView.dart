import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name:",
      "Blazers",
      "picture:",
      "images/products/bllazer1.jpeg",
      "old_price:",
      '120',
      "price:" '85',
    },
    {
      "name:",
      "Red Dress",
      "picture:",
      "images/products/dress2.jpeg",
      "old_price:",
      '100',
      "price:" '50',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
