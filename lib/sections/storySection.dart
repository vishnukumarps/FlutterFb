import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
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
            labeltText: 'Add story',
            story: post1, //Image
            createStoryStatus: false,
          ),

          
          StoryCard(
            avatar: mohanlal,
            labeltText: 'Add story',
            story: post2, //Image
            createStoryStatus: false,
          ),
          
          StoryCard(
            avatar: raj,
            labeltText: 'Add story',
            story: post3, //Image
            createStoryStatus: false,
          ),
        ],
      ),
    );
  }
}
