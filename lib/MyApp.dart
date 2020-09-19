import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/cart.dart';
import 'package:flutter_app_exercise1/checkout.dart';
import 'package:flutter_app_exercise1/details.dart';
import 'package:flutter_app_exercise1/end.dart';
import 'package:flutter_app_exercise1/goods.dart';
import 'home.dart';

class MyApp extends StatelessWidget{
  static final router = '/MyApp';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: (settings){
        if (settings.name == Details.router) {
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
        Home.router: (context) => Home(),
        Details.router: (context) => Details(),
        Cart.router: (context) => Cart(),
        CheckOut.router: (context) => CheckOut(),
        MyApp.router: (context) => MyApp(),
        End.router: (context) => End()
      },
      home: DefaultTabController(
        length: 2,
        child: Home(),
      )
    );
  }
}