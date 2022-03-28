import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/image/success.png'),
            height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Payment was done Successfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
          )
        ],
      ),
    );
  }
}
