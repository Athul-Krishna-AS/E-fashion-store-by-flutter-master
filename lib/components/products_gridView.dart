import 'package:flutter/material.dart';

// import 'package:college_project/homepage.dart';
import 'package:college_project/Pages/product_details.dart';
// import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazers",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Hills",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Skirt",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Shoe",
      "picture": "assets/images/products/shoe1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Hills2",
      "picture": "assets/images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Folks",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
            prod_old_price: product_list[index]['old_price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_price,
      this.prod_picture,
      this.prod_old_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text('Hero 1'),
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Productdetails(
                              //here is passing the values of the product to the product details page
                              product_detail_new_price: prod_price,
                              product_detail_picture: prod_picture,
                              product_detail_name: prod_name,
                              product_detail_old_price: prod_old_price,
                            )));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\₹${prod_price}",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
