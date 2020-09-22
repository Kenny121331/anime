import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/cart.dart';
import 'package:flutter_app_exercise1/category.dart';
import 'package:flutter_app_exercise1/checkout.dart';
import 'package:flutter_app_exercise1/details.dart';
import 'package:flutter_app_exercise1/end.dart';
import 'package:flutter_app_exercise1/goods.dart';
import 'home.dart';

class MyApp extends StatelessWidget{
  static final ROUTER = '/MyApp';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: (settings){
        if (settings.name == Details.ROUTER) {
          final Image2 args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) => Details(
              image1: args.image,
              text1: args.text,
              price1: args.price,
            )
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      routes: {
        Home.ROUTER: (context) => Home(),
        Details.ROUTER: (context) => Details(),
        Cart.ROUTER: (context) => Cart(),
        CheckOut.ROUTER: (context) => CheckOut(),
        MyApp.ROUTER: (context) => MyApp(),
        End.ROUTER: (context) => End(),
        Category.ROUTER: (context) => Category()
      },
      home: DefaultTabController(
        length: 2,
        child: Home(),
      )
    );
  }
}