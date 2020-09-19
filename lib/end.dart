import 'package:flutter/material.dart';

class End extends StatelessWidget{
  static final router = '/End';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Thanks for downloading this resource We hope you find it useful. If you\n',
              style: TextStyle(fontSize: 11),
            ),
            Text(
              ' do, remember to tag us on our social when you post.',
              style: TextStyle(fontSize: 11),
            ),
            Divider(
              height: 25,
              thickness: 2,
              color: Colors.grey,
              indent: 62,
              endIndent: 62,
            ),
            Text(
              'You can also request for free UI design resources here:\n',
              style: TextStyle(fontSize: 11),
            ),
            Text(
              'requestfreebie@arotecdigital.com',
              style: TextStyle(fontSize: 11, color: Colors.blue, decoration: TextDecoration.underline),
            ),
            Icon(Icons.contact_mail, size: 120),
            Text(
              'Facebook/Twitter/Instagram/Dribble/Linkedin:@arotecdigital\n',
              style: TextStyle(fontSize: 11),
            ),
            Text(
              'www.arotecdigital',
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}