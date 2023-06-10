
import 'package:bel_gomlaa/cart-pages/add-new-address.dart';
import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/cart-pages/checkout-page.dart';
import 'package:bel_gomlaa/cart-pages/delivery-page.dart';
import 'package:bel_gomlaa/cart-pages/payment-page.dart';
import 'package:bel_gomlaa/electronics-pages/computers.dart';

import 'package:bel_gomlaa/electronics-pages/electronics-page.dart';
import 'package:bel_gomlaa/electronics-pages/mobile-page.dart';
import 'package:bel_gomlaa/electronics-pages/tv-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/boys-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/girls-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/kidspage.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-accessories.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-clothing.dart';

import 'package:bel_gomlaa/fashion-pages/men-pages/menpage.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-accessories.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-bags.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-shoes.dart';
import 'package:bel_gomlaa/products.dart';
import 'package:bel_gomlaa/profile.dart';
import 'package:bel_gomlaa/settings.dart';
import 'package:bel_gomlaa/sign-pages/sign-in.dart';
import 'package:bel_gomlaa/fashion-pages/fashion-page.dart';
import 'package:bel_gomlaa/splash.dart';
import 'package:bel_gomlaa/supermarket-pages/beverages.dart';
import 'package:bel_gomlaa/supermarket-pages/flour&sugar.dart';
import 'package:bel_gomlaa/supermarket-pages/jarred-food.dart';
import 'package:bel_gomlaa/supermarket-pages/laundry.dart';
import 'package:bel_gomlaa/supermarket-pages/oil.dart';
import 'package:bel_gomlaa/supermarket-pages/pasta&rice.dart';
import 'package:bel_gomlaa/supermarket-pages/supermarket.dart';
import 'package:bel_gomlaa/sign-pages/vendor-sign-up.dart';
import 'package:bel_gomlaa/welcomepage.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-clothing.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/womenpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bottom-navbar.dart';
import 'cart-pages/add-new-visa.dart';
import 'sign-pages/customer-sign-up.dart';
import 'home-page/homepage.dart';



void main() => runApp(BelGomla());



class BelGomla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

  home:ProfilePage()

    );
  }}