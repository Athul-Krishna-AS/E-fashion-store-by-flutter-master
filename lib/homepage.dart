import 'package:college_project/Pages/cart.dart';
import 'package:college_project/components/horizontal%20listview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:college_project/components/horizontal listview.dart';
import 'package:college_project/components/products_gridView.dart';

class Homepage extends StatefulWidget {
  const Homepage({key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/new/13.jpeg'),
            AssetImage('assets/images/image/786067780sst1645936493.jpg'),
            // AssetImage('assets/images/image/786067780sst1645936493.jpg'),
            AssetImage('assets/new/10.jpeg'),
            AssetImage('assets/images/image/m1.jpeg'),
            // AssetImage('assets/images/image/960881636sst1645937116.jpg'),
            AssetImage('assets/new/11.jpeg'),
            AssetImage('assets/images/image/c1.jpg'),
            AssetImage('assets/images/image/m2.jpg'),
            AssetImage('assets/new/12.jpeg'),
            AssetImage('assets/images/image/848833309sst1645936480.jpg')
          ],
          autoplay: false,
          // animationCurve: Curves.fastOutSlowIn,
          // animationDuration: Duration(milliseconds: 10000),
          dotSize: 4.5,
          dotColor: Colors.white,
          indicatorBgPadding: 5.5,
          dotBgColor: Colors.transparent,
        ));
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: false,
        title: Text("E-Fashion"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Athul krishna"),
              accountEmail: Text("athul@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.blue),
            ),
//header begins
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Homepage"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          imageCarousel,
          // here ended the front scrolling type// that is photos and that addded to the pubsec.yaml
          //image carosel begins from here...
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Categories'),
          ),
          //  horizontal Listview starts from here
          Horizontalview(),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Text("Recent Products"),
          ),

          //  Gridview begins from here....
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
