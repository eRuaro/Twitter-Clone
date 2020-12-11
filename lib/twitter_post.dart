import 'package:flutter/material.dart';

class TwitterPost extends StatelessWidget {
  final image, content, name, likes, retweets, shares;

  TwitterPost(
      {this.image,
      this.content,
      this.name,
      this.likes,
      this.retweets,
      this.shares});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [ListTile()],
      ),
    );
  }
}
