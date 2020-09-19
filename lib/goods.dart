import 'package:flutter/material.dart';

class Image1{
  final String image;
  Image1({this.image});
}

List<Image1> image1 = [
  Image1(image: 'assets/samurai2.jpg'),
  Image1(image: 'assets/Shank1.jpg'),
  Image1(image: 'assets/Soider.jpg'),
  Image1(image: 'assets/Songoku.jpg'),
  Image1(image: 'assets/Suka.jpg'),
  Image1(image: 'assets/Tashigi2.png'),
  Image1(image: 'assets/Taylor.png'),
  Image1(image: 'assets/Thor.jpg'),
  Image1(image: 'assets/Vivi1.jpg'),
  Image1(image: 'assets/WhiteBoard1.jpg'),
];

class Image2{
  final String image;
  final String text;
  final double price;
  Image2({this.image, this.text, this.price});
}

List<Image2> image2 = [
  Image2(image: 'assets/BlackBoard1.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 23.45),
  Image2(image: 'assets/Gao blue.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 145.34),
  Image2(image: 'assets/Maria.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 43.23),
  Image2(image: 'assets/Boa1.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 23.47),
  Image2(image: 'assets/Buggi.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 23.45),
  Image2(image: 'assets/Captain.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 16.93),
  Image2(image: 'assets/Chaien.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 234.87),
  Image2(image: 'assets/China.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 92.0),
  Image2(image: 'assets/Doraemon.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 63.291),
  Image2(image: 'assets/Gao black.png', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 23.45),
  Image2(image: 'assets/Gao red.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 83.23),
  Image2(image: 'assets/Gao yellow.png', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 12.21),
  Image2(image: 'assets/Iron.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 83.28),
  Image2(image: 'assets/Kaido1.png', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 93.92),
  Image2(image: 'assets/Katakuri1.png', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 23.35),
  Image2(image: 'assets/Luffy.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 23.45),
  Image2(image: 'assets/Marco1.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 29.533),
  Image2(image: 'assets/Momonosuke1.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 0.2),
  Image2(image: 'assets/Neko1.png', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 38.72),
  Image2(image: 'assets/Nobita.png', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 24.56),
  Image2(image: 'assets/Rayleigh1.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 10.32),
  Image2(image: 'assets/rebeca.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 28.48),
  Image2(image: 'assets/Rider.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 29.64),
  Image2(image: 'assets/Samurai.jpg', text: 'Chelsea F.c 2020/2021 Stadium Home', price: 3.56),
];

class PassMenu {
  final String image;
  final String text;
  final double price;
  PassMenu({this.image, this.text, this.price});
}

class DrawerMenu {
  Widget icon;
  String text;
  DrawerMenu({this.icon, this.text});
}

List<DrawerMenu> drawerMenu = [
  DrawerMenu(icon: Icon(Icons.home), text: 'Home'),
  DrawerMenu(icon: Icon(Icons.person), text: 'Account settings'),
  DrawerMenu(icon: Icon(Icons.favorite), text: 'My WishList'),
  DrawerMenu(icon: Icon(Icons.shopping_basket), text: 'Orders'),
  DrawerMenu(icon: Icon(Icons.message), text: 'Support'),
];

class Jersey{
  Widget icon;
  String text;
  double total;
  Jersey({this.icon, this.text, this.total});
}

List<Jersey> jersey = [
  Jersey(icon: Icon(Icons.home), text: 'All', total: 13.643),
  Jersey(icon: Icon(Icons.adb), text: 'Football(Soccer)', total: 3.643),
  Jersey(icon: Icon(Icons.border_color), text: 'Basketball', total: 23.123),
  Jersey(icon: Icon(Icons.battery_full), text: 'Rugby', total: 24.832),
  Jersey(icon: Icon(Icons.router), text: 'Badminton', total: 3.5),
  Jersey(icon: Icon(Icons.blur_on), text: 'Tennis', total: 34.847),
  Jersey(icon: Icon(Icons.audiotrack), text: 'Hockey', total: 13.643),
];

class Kits{
  Widget icon;
  String text;
  double total;
  Kits({this.icon, this.text, this.total});
}

List<Kits> kits = [
  Kits(icon: Icon(Icons.audiotrack), text: 'Hockey', total: 13.643),
  Kits(icon: Icon(Icons.blur_on), text: 'Tennis', total: 34.847),
  Kits(icon: Icon(Icons.battery_full), text: 'Rugby', total: 24.832),
  Kits(icon: Icon(Icons.border_color), text: 'Basketball', total: 23.123),
  Kits(icon: Icon(Icons.adb), text: 'Football(Soccer)', total: 3.643),
  Kits(icon: Icon(Icons.blur_on), text: 'Tennis', total: 34.847),
  Kits(icon: Icon(Icons.home), text: 'All', total: 13.643),
  Kits(icon: Icon(Icons.border_color), text: 'Basketball', total: 23.123),
  Kits(icon: Icon(Icons.home), text: 'All', total: 13.643),
];