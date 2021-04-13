
import 'package:facebook/widgets/circularAvatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labeltText;
  final String avatar;
  final String story;
  final createStoryStatus;

  StoryCard({
      @required this.labeltText,
      @required this.story,
      @required this.avatar,
      this.createStoryStatus = false
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus?
            CircularButton(
              buttonAction: () {},
              buttonIcon: Icons.add,
            ):
            CircularAvatar(displayImage: avatar, displayStatus: false),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(labeltText==null ?'':labeltText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
