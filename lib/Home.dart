import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );

  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
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
          CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('Serach screen appears');
              }),
          CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print(' messager appears');
              }),
        ],
      ),
      body: ListView(children: [
        StatusSection(),
        thinDivider,
        HeaderButtonSection(),
        thickDivider,
        RoomSection(),
        thickDivider,
        StorySection(),
        thickDivider,
        PostCard(
            avatar: mohanlal,
            name: 'Mohan Lal',
            publishedAt: '5h',
            postTitle: 'Happy Diwali',
            postImage: post4,
            showBlueTick: true),
        thickDivider,
        PostCard(
            avatar: raj,
            name: 'PrithviRaj',
            publishedAt: '4h',
            postTitle: 'Happy Diwali',
            postImage: post1,
            showBlueTick: true),
        thickDivider,
        PostCard(
            avatar: mammootty,
            name: 'Mammootty',
            publishedAt: '4h',
            postTitle: 'Happy Diwali',
            postImage: mammootty,
            showBlueTick: true),
        thickDivider,
        PostCard(
            avatar: vishnu,
            name: 'Vishnu Kumar',
            publishedAt: '4h',
            postTitle: '',
            postImage: flash,
            showBlueTick: false),
        thickDivider,
      ]),
    ));
  }
}
