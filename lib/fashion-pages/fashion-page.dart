import 'package:bel_gomlaa/fashion-pages/kids-pages/kidspage.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/menpage.dart';
import 'package:bel_gomlaa/products.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/womenpage.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:bel_gomlaa/products-description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../cart-pages/cart-page.dart';
import '../profile.dart';
import '../wishlist-page.dart';

class FashionPage extends StatefulWidget {
  _FashionPageState createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Fashion',
          style: TextStyle(color: Color(0xff58006D)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Color(0xff58006D),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
              print("cart page");
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Color(0xff58006D),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff58006D)),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Do something when search icon button is pressed.
                    },
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Color(0xff58006D)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {
                      // Do something when voice icon button is pressed.
                    },
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WomenPage()),
                    );
                    print("women");
                  },
                  child: Text(
                    'Women',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenPage()),
                    );
                    print("men");
                  },
                  child: Text(
                    'Men',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KidsPage()),
                    );
                    print("kids");
                  },
                  child: Text(
                    'Kids',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TRENDING IN ALL',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 350,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      separatorBuilder: (context, _) => SizedBox(width: 12),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(
                                item: items[index],
                              ),
                            ),
                          );
                        },
                        child: buildCard(items[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'RECOMMENDED',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 350,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, _) => SizedBox(width: 12),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(
                                item: items[index],
                              ),
                            ),
                          );
                        },
                        child: buildCard(items[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'RECENTLY SEEN',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 350,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, _) => SizedBox(width: 12),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(
                                item: items[index],
                              ),
                            ),
                          );
                        },
                        child: buildCard(items[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(Product) => Container(
      width: 190,
      child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              Product.name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Product.price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ],
          ),
      );
}