import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  // const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    {
      "name": "Blazers",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 120,
      "Size": "M",
      "color": "Black",
      "Quantity": 1
    },
    {
      "name": "Red Dress",
      "picture": "assets/images/products/dress2.jpeg",
      "price": 50,
      "Size": "M",
      "color": "Red",
      "Quantity": 1
    },
  ];

  get index => null;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_products(
            cart_product_name: products_on_the_cart[index]["name"],
            cart_product_size: products_on_the_cart[index]["Size"],
            cart_product_price: products_on_the_cart[index]["price"],
            cart_product_Qty: products_on_the_cart[index]["Quantity"],
            cart_product_picture: products_on_the_cart[index]["picture"],
            cart_product_color: products_on_the_cart[index]["color"],
          );
        });
  }
}

class Single_cart_products extends StatelessWidget {
  late final cart_product_name;
  late final cart_product_price;
  late final cart_product_picture;
  late final cart_product_size;
  late final cart_product_color;
  late final cart_product_Qty;

  Single_cart_products(
      {this.cart_product_name,
      this.cart_product_price,
      this.cart_product_picture,
      this.cart_product_size,
      this.cart_product_color,
      this.cart_product_Qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //================LEADING SECTION ===============
        leading: Image.asset(
          cart_product_picture,
          width: 120,
          height: 120,
        ),
        //=================== TITLE SECTION ==================
        title: Text(cart_product_name),
        //================ SUBTITLE SECTION =============
        subtitle: Column(
          children: <Widget>[
            //  ROW INSIDE THE COLUMN
            Row(
              children: <Widget>[
                //========================= this section  is for the size of the product ====================
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    'Size:',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ),
                //========================= this section  is for the color of the product ====================
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text(
                    "Color:",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    cart_product_color,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                )
              ],
            ),

            //   //========================= this section  is for the price of the product ====================
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\₹${cart_product_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fitHeight,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 60.0,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 60.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
