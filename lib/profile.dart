import 'package:bel_gomlaa/welcomepage.dart';
import 'package:bel_gomlaa/wishlist-page.dart';
import 'package:flutter/material.dart';

import 'cart-pages/cart-page.dart';
import 'home-page/homepage.dart';

class ProfilePage extends StatefulWidget{
  _ProfilePageState createState() =>  _ProfilePageState();
}
class  _ProfilePageState  extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()));
          print("logout done");

        },
        child: Icon(Icons.logout_rounded),
        backgroundColor: Color(0xff58006D),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            ListTile(
              title: Center(child: Text("mohamed magdy", style: TextStyle(fontSize: 20),),) ,
              subtitle: Center(child: Text("mohamedmagdyyy22@gmail.com", style: TextStyle(fontSize: 15)),),
            ),

            Divider(
              height: 20,
              color: Colors.purple,
              thickness: 2,
              indent : 10,
              endIndent : 10,
            ),


            TextButton(


              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.phone),
                title:   ListTile(
                  title:  Text("Number", style: TextStyle(fontSize: 18),),
                  subtitle:  Text("01111111111",),
                ),
              ),
            ),

            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings',style: TextStyle(fontSize: 18),),
              ),
            ),
            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Orders',style: TextStyle(fontSize: 18),),
              ),
            ),

            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications',style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
