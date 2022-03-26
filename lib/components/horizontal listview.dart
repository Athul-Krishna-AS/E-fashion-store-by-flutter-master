import 'package:flutter/material.dart';


class Horizontalview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/cats/tshirt.png',
            image_caption: 'Shirts',
          ),
      Category(
        image_location: 'assets/images/cats/accessories.png',
        image_caption: 'Accessory',
      ),
      Category(
        image_location: 'assets/images/cats/dress.png',
        image_caption: 'Dress',
      ),
      Category(
        image_location: 'assets/images/cats/formal.png',
        image_caption: 'Formal',
      ),
      Category(
        image_location: 'assets/images/cats/informal.png',
        image_caption: 'Trends',
      ),
          Category(
            image_location: 'assets/images/cats/jeans.png',
            image_caption: 'Denims',
          ),
          Category(
            image_location: 'assets/images/cats/shoe.png',
            image_caption: 'Shoes',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
   final String image_location;
   final String image_caption;

  Category({
     required this.image_location,
     required this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
    onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
      title: Image.asset(image_location,
      width: 100.0,
      height: 50.0,
      ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 5.0),
          child: Text(image_caption,style: TextStyle(fontSize: 13.5),),
        )
      ),
    ),
    ),);
}
}
