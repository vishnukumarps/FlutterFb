import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required String buttonText,
    @required IconData buttonIcon,
    @required void Function() buttonAction,
    @required Color buttonColor,
  }) {
    return TextButton.icon(
      icon: Icon(Icons.video_call, color: buttonColor),
      onPressed: buttonAction,
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      color: Colors.grey[300],
      thickness: 1,
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonAction: () {
                print('hai');
              },
              buttonColor: Colors.red,
              buttonIcon: Icons.video_call,
              buttonText: 'Live'),
          verticalDivider,
          headerButton(
              buttonAction: () {
                print('take photo');
              },
              buttonColor: Colors.green,
              buttonIcon: Icons.photo_library,
              buttonText: 'photo'),
          verticalDivider,
          headerButton(
              buttonAction: () {
                print('Create chat room');
              },
              buttonColor: Colors.purple,
              buttonIcon: Icons.video_call,
              buttonText: 'Room'),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          
        ],
      ),
    );
  }
}
