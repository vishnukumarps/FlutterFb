import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.black, size: 25),
              )),
        ],
      ),
    ));
  }
}
