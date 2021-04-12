import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/widgets/appBarButton.dart';
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
          AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('Serach screen appears');
              }),
          AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print(' messager appears');
              }),
        ],
      ),
      body: ListView(children: [
        StatusSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        HeaderButtonSection()
      ]),
    ));
  }
}
