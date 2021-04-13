
import 'package:facebook/widgets/circularAvatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircularAvatar(displayImage: dulqur, displayStatus: false,),
      title: TextField(
          decoration: InputDecoration(
        hintText: "What's own your mind",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      )),
    );
  }
}
