import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/end.dart';
import 'goods.dart';

class CheckOut extends StatefulWidget{
  static final router = '/CheckOut';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckOutState();
  }
}

class _CheckOutState extends State<CheckOut>{
  bool cashOnDelivery = true;
  bool applePay = false;
  bool creditCard = false;
  Widget text (String text){
    return Text(
      text,
      style: TextStyle(fontSize: 18),
    );
  }
  void _CashOnDelivery (){
    setState(() {
      cashOnDelivery = true;
      applePay = false;
      creditCard = false;
    });
  }
  void _ApplePay(){
    setState(() {
      cashOnDelivery = false;
      applePay = true;
      creditCard = false;
    });
  }
  void _CreditCard (){
    setState(() {
      cashOnDelivery = false;
      applePay = false;
      creditCard = true;
    });
  }



  @override
  Widget build(BuildContext context) {
    final Image2 args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white54,
          leading: IconButton(
            icon: Icon(Icons.keyboard_backspace, color: Colors.black),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: [
            Icon(Icons.more_horiz, color: Colors.black)
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Check out',
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: text('Payment Method'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 40,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: text('Cash on Delivery'),
                            ),
                            IconButton(
                              icon: Icon(cashOnDelivery ? Icons.check_circle : Icons.panorama_fish_eye),
                              onPressed: _CashOnDelivery,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 40,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: text('Apple pay'),
                            ),
                            IconButton(
                              icon: Icon(applePay ? Icons.check_circle : Icons.panorama_fish_eye),
                              onPressed: _ApplePay,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 40,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: text('Debit / Credit Card'),
                            ),
                            IconButton(
                              icon: Icon(creditCard ? Icons.check_circle : Icons.panorama_fish_eye),
                              onPressed: _CreditCard,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: text('Shipping Address'),
                  ),
                  Container(
                    height: 40,
                    color: Colors.white,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: text('Primary Address'),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          color: Colors.grey,
                          child: Icon(Icons.expand_more, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: text('Coupon'),
                  ),
                  Container(
                    height: 40,
                    color: Colors.white,
                    width: double.infinity,
                    child: TextField(
                      style: TextStyle(fontSize: 24),
                      decoration: InputDecoration(
                          hintText: 'Enter code',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.lock_outline, color: Colors.black),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: double.infinity,
                height: 140,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Fee', style: TextStyle(fontSize: 18, color: Colors.grey)),
                          Text('\$45', style: TextStyle(fontSize: 18, color: Colors.grey))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total', style: TextStyle(fontSize: 18)),
                          Text('\$${args.price}', style: TextStyle(fontSize: 18))
                        ],
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            color: Colors.black,
                            onPressed: (){
                              Navigator.pushNamed(
                                  context,
                                  End.router
                              );
                            },
                            child: Text('check out', style: TextStyle(color: Colors.white)),
                          )
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}