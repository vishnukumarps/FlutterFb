import 'package:facebook/assets.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(dulqur),
            fit: BoxFit.cover,
          )),

          child: Stack(
            children: [
              Positioned(
                left: 5,
                top: 5,
                child: CircularButton(
                  buttonAction: () {  }
                  , buttonIcon: Icons.add,),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text('Add Story',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
              )
            ],
          ),
    );
  }
}
