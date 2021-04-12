import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  Avatar({@required this.displayImage, @required this.displayStatus});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            child: Image.asset(
              displayImage,
              width: 50,
              height: 50,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        displayStatus
            ? Positioned(
                bottom: 0,
                right: 4.0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
