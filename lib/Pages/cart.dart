import 'package:college_project/Pages/Payment.dart';
import 'package:college_project/components/cart_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: false,
        title: Text("Cart"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),

      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text('Total'),
              subtitle: Text("\₹500"),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Payments()));},
              child: Text(
                "CheckOut",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ))
          ],
        ),
      ),
    );
  }
}
