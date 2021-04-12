import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  AppBarButton({
    @required this.buttonIcon, 
    @required this.buttonAction
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
        child: IconButton(
          onPressed:buttonAction,
          icon: Icon(buttonIcon, color: Colors.black, size: 25),
        ));
  }
}
