import 'package:bel_gomlaa/sign-pages/sign-in.dart';
import 'package:bel_gomlaa/sign-pages/vendor-sign-up.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class WelcomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff58006D),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double screenHeight = MediaQuery.of(context).size.height;
          final double logoHeight = screenHeight * 0.35;

          return Column(

            children: [
              Container(
                child: Image.asset('assets/images/logo111.png'),
                width: 380,
                height: 350
              ),
              SizedBox(height: constraints.maxHeight * 0.2),
              Text(
                'JOIN US AS',
                style: TextStyle(
                  fontSize: constraints.maxWidth * 0.07,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                      print("Vendor navigated");
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: constraints.maxWidth * 0.05),
                      width: constraints.maxWidth * 0.35,
                      height: constraints.maxWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Vendor',
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.045,
                            fontWeight: FontWeight.w500,
                            height: 1.1725,
                            color: Color(0xf970018c),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                      print("Customer navigated");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: constraints.maxWidth * 0.05),
                      width: constraints.maxWidth * 0.35,
                      height: constraints.maxWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Customer',
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.045,
                            fontWeight: FontWeight.w500,
                            height: 1.1725,
                            color: Color(0xf970018c),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}