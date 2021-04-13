import 'package:facebook/assets.dart';
import 'package:facebook/widgets/circularAvatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget creteRoomButton() {
    // ignore: deprecated_member_use
    return OutlineButton.icon(
        shape: StadiumBorder(),
        borderSide: BorderSide(color: Colors.blue[100], width: 2),
        onPressed: () {
          print('create chat');
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          'Create \n Room',
          style: TextStyle(color: Colors.blue),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          creteRoomButton(),
          CircularAvatar(displayImage: dulqur, displayStatus: true,),
          CircularAvatar(displayImage: raj, displayStatus: true),
          CircularAvatar(displayImage: mohanlal, displayStatus: true),
          CircularAvatar(displayImage: mammootty, displayStatus: true),
           CircularAvatar(displayImage: dulqur, displayStatus: true),
          CircularAvatar(displayImage: raj, displayStatus: true),
          CircularAvatar(displayImage: mohanlal, displayStatus: true),
          CircularAvatar(displayImage: mammootty, displayStatus: true),
         

        ],
      ),
    );
  }
}
