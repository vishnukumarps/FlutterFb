import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Color iconColor;
  final IconData buttonIcon;
  final void Function() buttonAction;

  CircularButton(
      {@required this.buttonIcon,
      @required this.buttonAction,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
        child: IconButton(
          onPressed: buttonAction,
          icon: Icon(buttonIcon, color: iconColor, size: 25),
        ));
  }
}
