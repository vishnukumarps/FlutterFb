import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final bool showBlueTick;
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  PostCard(
      {@required this.avatar,
      @required this.name,
      @required this.publishedAt,
      this.showBlueTick = false,
      this.postTitle,
      this.postImage});

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget displayText({@required String labeltext}) {
    return Text(labeltext != null ? labeltext : '',
        style: TextStyle(
          color: Colors.grey[700],
        ));
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.thumb_up, color: Colors.white, size: 10)),
              displayText(labeltext: '10k')
            ],
          ),
          Container(
            child: Row(
              children: [
                displayText(labeltext: '1K'),
                SizedBox(
                  width: 5,
                ),
                displayText(labeltext: 'Comments'),
                SizedBox(
                  width: 5,
                ),
                displayText(labeltext: '500'),
                SizedBox(
                  width: 4,
                ),
                displayText(labeltext: "Share")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt != null ? publishedAt : ''),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('Open More menu');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle != null ? postTitle : '',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection()
        ],
      ),
    );
  }
}
