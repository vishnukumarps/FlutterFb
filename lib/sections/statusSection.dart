
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        child: Image.asset(
          dulqur,
          width: 50,
          height: 50,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
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
