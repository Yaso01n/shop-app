// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './Login Page.dart';
import './Home Page.dart';
import './Cart Page.dart';
import './Favourite Page.dart';
import './Navigation Bar.dart';
import './Product Details Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'logg': (context) => Loginpage(),
        'home': (context) => MyHomePage(),
        'cart': (context) => Cartpage(),
        'fav': (context) => FavPage(),
        '/bar': (context) => MyNavigationBar(),
        'detail': (context) => DetailsPage(),
      },
      initialRoute: 'logg',
    );
  }
}
