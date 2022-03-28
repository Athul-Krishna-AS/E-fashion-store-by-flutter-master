import 'package:college_project/Pages/successfull.dart';
import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  int value = 0;
  final Payment_Labels = [
    "Credit Card/Debit Card",
    "Cash on Delivery",
    "Paypal",
    "Google Pay",
    "E=fashion Wallet"
  ];
  final Payment_Icons = [
    Icons.credit_card,
    Icons.money_off,
    Icons.payment,
    Icons.account_balance_wallet,
    Icons.wallet_giftcard
  ];

  // get value => null;
  //
  // set value(Object? value) {}

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Choose your Payment Method",
              style: TextStyle(color: Colors.grey, fontSize: 28.0),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemCount: Payment_Labels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                      activeColor: Colors.blue,
                      value: index,
                      groupValue: value,
                      onChanged: (i) => setState(() => value = index),
                    ),
                    title: Text(
                      Payment_Labels[index],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Payment_Icons[index],
                      color: Colors.red,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                }),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Success()));
                },
                child: Text(
                  'Pay',
                  style: TextStyle(fontSize: 40.0),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
