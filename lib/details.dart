import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/cart.dart';
import 'package:flutter_app_exercise1/goods.dart';

class Details extends StatefulWidget{
  static final ROUTER = '/Details';
  String image1;
  String text1;
  double price1;
  Details({this.image1, this.text1,this.price1});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsState(image1: image1, text1: text1, price1: price1);
  }
}

class _DetailsState extends State<Details>{
  String image1;
  String text1;
  double price1;
  _DetailsState({this.image1, this.text1, this.price1});
  bool _like = true;
  void _toggleLike (){
    setState(() {
      _like = ! _like;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Image2 args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.keyboard_backspace, color: Colors.black),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: [
            Icon(Icons.shopping_basket, color: Colors.black,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    child: Image(
                        image: AssetImage(args.image),
                        fit: BoxFit.cover,
                        width: 300,
                        height: 350,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290, left: 260),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: IconButton(
                        icon: Icon(
                          _like ? Icons.favorite_border : Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        onPressed: _toggleLike,
                      ),
                    ),
                  )
                ],
              ),
              Text('\$${args.price}', style: TextStyle(color: Colors.red, fontSize: 18)),
              Text(args.text, style: TextStyle(fontSize: 18)),
              Text(
                'The Nike F.C.Shirt blends 2 number favorites: festivals and football. '
                    'Soft, sweat-wicking fabric and a mesh racer back help you stay '
                    'comfortable on the pitch or in the crowd',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 145,
                    height: 45,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: (){},
                        child: Row(
                          children: [
                            Text('XS(UK 4-6)', style: TextStyle(fontSize: 18)),
                            Icon(Icons.keyboard_arrow_down, color: Colors.black)
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    width: 145,
                    height: 45,
                    child: RaisedButton(
                      color: Colors.black,
                      onPressed: (){
                        Navigator.pushNamed(
                            context,
                            Cart.ROUTER,
                            arguments: Image2(
                              image: args.image,
                              text: args.text,
                              price: args.price
                            )
                        );
                      },
                      child: Text('Add to bag', style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}