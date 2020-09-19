import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_exercise1/details.dart';
import 'package:flutter_app_exercise1/goods.dart';

class Home extends StatefulWidget{
  static final router = '/Home';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  bool _search = true;
  void _Search(){
    setState(() {
      _search = ! _search;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.short_text, color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(_search ? Icons.search : Icons.close, color: Colors.black),
              onPressed: _Search,
            ),
          ],
        ),
        body: _search ? home1() : home2(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/Statham.jpg'),
                          fit: BoxFit.cover,
                          width: 80,
                          height: 130,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Jason Statham', style: TextStyle(fontSize: 18)),
                              Text('View profile', style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: IconButton(
                        icon: Icon(Icons.close, color: Colors.black),
                        onPressed: (){
                          Navigator.pushNamed(
                              context,
                              Home.router
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: ListView.builder(
                    itemCount: drawerMenu.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: <Widget>[
                            drawerMenu[index].icon,
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drawerMenu[index].text, style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Log out', style: TextStyle(fontSize: 18, color: Colors.grey)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget home1 (){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New Release',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'New Release',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      Text(
        '2020/2021',
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
      Stack(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: image1.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: 150,
                    height: 180,
                    child: Image(
                        image: AssetImage(image1[index].image),
                        fit: BoxFit.cover
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140, top: 120),
            child: Container(
              color: Colors.white,
              width: 120,
              height: 42,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Women\'s', style: TextStyle(fontSize: 21)),
                      Text('Kits \& jerseys', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                  Icon(Icons.forward, color: Colors.grey, size: 30,)
                ],
              ),
            ),
          ),
        ],
      ),
      Text('Trending', style: TextStyle(fontSize: 24)),
      SizedBox(
        width: double.infinity,
        height: 250,
        child: GridView.builder(
            itemCount: image2.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                maxCrossAxisExtent: 250,
                childAspectRatio: 2/3
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      Details.router,
                      arguments: Image2(
                          image: image2[index].image,
                          text: image2[index].text,
                          price: image2[index].price
                      )
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage(image2[index].image),
                          fit: BoxFit.cover,
                          width: 150,
                          height: 180,
                        ),
                      ),
                      Text(image2[index].text),
                      Text('\$${image2[index].price}', style: TextStyle(color: Colors.red))
                    ],
                  ),
                ),
              );
            }
        ),
      )
    ],
  );
}
Widget home2 (){
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: TextField(
            //cursorColor: Colors.white54,
            style: TextStyle(fontSize: 21),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
              prefixIcon: Icon(Icons.search, color: Colors.white54),
              hintText: 'What are you looking for?',
              focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.grey),
                borderRadius: new BorderRadius.circular(20),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.green),
                borderRadius: new BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: 40,
        child: TabBar(
          indicatorColor: Colors.grey,
          tabs: <Widget>[
            Text('Jersey', style: TextStyle(fontSize: 18, color: Colors.black)),
            Text('Kits', style: TextStyle(fontSize: 18, color: Colors.black))
          ],
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: 350,
        child: TabBarView(
          children: <Widget>[
            ListView.builder(
                itemCount: jersey.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          jersey[index].icon,
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(jersey[index].text, style: TextStyle(fontSize: 18)),
                          )
                        ],
                      ),
                      Text('${jersey[index].total}>', style: TextStyle(fontSize: 16))
                    ],
                  ),
                )
            ),
            ListView.builder(
                itemCount: kits.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          kits[index].icon,
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(kits[index].text, style: TextStyle(fontSize: 18)),
                          )
                        ],
                      ),
                      Text('${kits[index].total}>', style: TextStyle(fontSize: 16))
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    ],
  );
}