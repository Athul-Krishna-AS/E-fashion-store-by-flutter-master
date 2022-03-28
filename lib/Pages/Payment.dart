import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  final Payment_Labels = [
    "Credit Card/Debit Card",
    "Cash on Delivery",
    "Paypal",
    "Google Pay",
    "E=fashion Wallet"
  ];



  // get value => null;
  //
  set value(Object? value) {}

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
      body: ListView.separated(
          itemCount: Payment_Labels.length,
          itemBuilder: (context, index) {
            // var value;
            int value;
            return ListTile(
              leading: Radio(
                activeColor: Colors.blue,
                value: value,
                groupValue: value,
                onChanged: (i) => setState(() => value = index),
              ),
              title: Text(Payment_Labels[index]),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          }),
    );
  }
}
