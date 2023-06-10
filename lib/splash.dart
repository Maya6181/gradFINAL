



import 'dart:async';

import 'package:bel_gomlaa/welcomepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}
class _splashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                WelcomePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff58006D),
       body:  Column(
                children: [
                  SizedBox(height: 150),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(top: 150, left: 20),
                    width: 350,
                    height: 200,
                    child: Image.asset(
                      'assets/images/logo111.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

            );

  }
}
