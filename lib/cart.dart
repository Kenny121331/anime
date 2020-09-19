import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/checkout.dart';
import 'package:flutter_app_exercise1/home.dart';
import 'goods.dart';
import 'MyApp.dart';

class Cart extends StatelessWidget{
  static final router = '/Cart';
  @override
  Widget build(BuildContext context) {
    final Image2 args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close, color: Colors.black),
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    MyApp.router
                );
              },
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Cart', style: TextStyle(fontSize: 30)),
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 155,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(args.image),
                                fit: BoxFit.cover,
                                width: 80,
                                height: 130,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SizedBox(
                                  height: 130,
                                  width: 230,
                                  child: Center(child: Text(args.text, style: TextStyle(fontSize: 18))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text('x1', style: TextStyle(fontSize: 18, color: Colors.grey)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('\$${args.price}', style: TextStyle(color: Colors.red, fontSize: 18)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyle(fontSize: 21)),
                        Text('\$${args.price}', style: TextStyle(fontSize: 21))
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.black,
                        splashColor: Colors.red,
                        onPressed: (){
                          Navigator.pushNamed(
                              context,
                              CheckOut.router,
                              arguments: Image2(price: args.price)
                          );
                        },
                        child: Text('Check out', style: TextStyle(fontSize: 21, color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}