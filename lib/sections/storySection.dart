import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatar: dulqur,
            labeltText: 'Add story',
            story: dulqur,//Image
            createStoryStatus: true,
          ),

          StoryCard(
            avatar: mammootty,
            labeltText: null,
            story: post1, //Image
            createStoryStatus: false,
          ),

          
          StoryCard(
            avatar: mohanlal,
            labeltText: null,
            story: post2, //Image
            createStoryStatus: false,
          ),
          
          StoryCard(
            avatar: raj,
            labeltText: null,
            story: post3, //Image
            createStoryStatus: false,
          ),
        ],
      ),
    );
  }
}
