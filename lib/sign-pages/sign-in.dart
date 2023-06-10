import 'package:bel_gomlaa/bottom-navbar.dart';
import 'package:bel_gomlaa/sign-pages/customer-sign-up.dart';
import 'package:bel_gomlaa/sign-pages/socials.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
import '../home-page/homepage.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff58006D),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 60),
                        CustomTextField(
                          hintText: 'Email',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Password',
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CategoriesPage();
                                },
                              ),
                            );
                          },
                          child: CustomButton(
                            text: 'Sign In',
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Socials(
                              icon: "assets/images/facebook-1.png",
                            ),
                            Socials(
                              icon: "assets/images/group-113.png",
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                color: Color(0xff58006D),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return CustomerSignUp();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                '   CREATE NOW',
                                style: TextStyle(
                                  color: Color(0xff23002C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}