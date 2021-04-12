import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String Ava 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(displayImage: mohanlal, displayStatus: null,),
          ),
          SizedBox(),
          
        ],
      ),
    );
  }
}