import 'package:college_project/Pages/cart.dart';
import 'package:college_project/homepage.dart';
import 'package:flutter/material.dart';

class Productdetails extends StatefulWidget {
  late final product_detail_name;
  late final product_detail_old_price;
  late final product_detail_new_price;
  late final product_detail_picture;

  Productdetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          centerTitle: false,
          title: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Text("E-Fashion")),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                }),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\₹${widget.product_detail_old_price}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: new Text(
                            "\₹${widget.product_detail_new_price}",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //================ first BUttons ===============
            Row(
              children: <Widget>[
                // =============== the size button ==============
                Expanded(
                  child: new MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: Text('Size'),
                              content: Text('Choose the size'),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text('Close',style: TextStyle(color: Colors.blue),),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text('Size')),
                        Expanded(child: new Icon((Icons.arrow_drop_down)))
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: new MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: Text('Color'),
                              content: Text('Choose the Color'),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text('Close',style: TextStyle(color: Colors.blue),),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text('Color')),
                        Expanded(child: new Icon((Icons.arrow_drop_down)))
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: new MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: Text('Qty'),
                              content: Text('Choose the Quantity'),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text('Close',style: TextStyle(color: Colors.blue),),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text('Qty')),
                        Expanded(child: new Icon((Icons.arrow_drop_down)))
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //================ second BUttons ===============
            Row(
              children: <Widget>[
                // =============== the size button ==============
                Expanded(
                  child: new MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: new Text("Buy Now!")),
                ),
                new IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.blue,
                  onPressed: () {},
                ),

                new IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            new ListTile(
              title: Text("Product Details"),
              subtitle: new Text(
                  "Blazers, in a wide range of colours, are worn as part of school uniforms by many schools across the Commonwealth, and are still daily wear for most uniformed pupils in Britain, Ireland, Australia, New Zealand and South Africa. These are blazers in the traditional sense: single-breasted, and often of bright colours or with piping. This style is also worn by some boat clubs, such as those in Cambridge or Oxford, with the piped version used only on special occasions such as a boat club dinner. In this case, the piping is in college colours, and college buttons are worn."),
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    'Product Name',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("Blazer"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    'Product Brand',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Adidas'),
                )
              ],
            ),
            // ====================== ADD THE PRODUCT CONDITION ===============================
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    'Product Condition',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text('New'),
                )
              ],
            ),

            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Similar Products"),
            ),

// =============== similar product section ==================
            Container(
              height: 340.0,
              child: Similar_products(),
            ),
          ],
        ));
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
            prod_old_price: product_list[index]['old_price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
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
