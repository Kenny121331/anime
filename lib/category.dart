import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/details.dart';
import 'goods.dart';

class Category extends StatelessWidget{
  static final ROUTER = '/Category';
  @override
  Widget build(BuildContext context) {
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
          actions: <Widget>[
            Icon(Icons.shopping_basket, color: Colors.black)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Women\'s', style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      Icon(Icons.android, color: Colors.black),
                    ],
                  )
                ],
              ),
              Text(
                'Football(Soccer)/Jerseys', style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: double.infinity,
                height: 450,
                child: GridView.builder(
                    itemCount: image2.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 260,
                        mainAxisSpacing: 5, crossAxisSpacing: 5,
                        childAspectRatio: 2/3
                    ),
                    itemBuilder: (context, index) => GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage(image2[index].image),
                              fit: BoxFit.cover,
                              width: 150,
                              height: 200,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(image2[index].text),
                          ),
                          Text(
                            '\$${image2[index].price}',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      onTap: (){
                        Navigator.pushNamed(
                            context,
                            Details.ROUTER,
                            arguments: Image2(
                              image: image2[index].image,
                              text: image2[index].text,
                              price: image2[index].price
                            )
                        );
                      },
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}