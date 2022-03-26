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
  
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_old_price: product_list[index]['old_price'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
          });
      
    
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  
  const Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
    
    
   

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}
