import 'package:bel_gomlaa/bottom-navbar.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';
import '../home-page/homepage.dart';

class CustomerSignUp extends StatelessWidget {
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
                'Let\'s Get Started!',
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
                  padding: EdgeInsets.all(30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 20),
                        CustomTextField(
                          hintText: 'Username',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Email',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Password',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Confirm Password',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Mobile Number',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Address',
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return CategoriesPage();
                              }),
                            );
                          },
                          child: CustomButton(
                            text: 'Sign Up',
                          ),
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
