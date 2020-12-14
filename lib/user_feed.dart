import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitter_clone/twitter_post.dart';
import 'tweets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserFeed extends StatefulWidget {
  UserFeed({Key key}) : super(key: key);

  @override
  _UserFeedState createState() => _UserFeedState();
}

class _UserFeedState extends State<UserFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.account_circle_rounded,
          color: Colors.grey,
          size: 40,
        ),
      ),
      body: ListView.builder(
        itemCount: 03,
        itemBuilder: (BuildContext context, int position) {
          Tweets tweets = TwitterPost.getTweet(position);

          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 60.0,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                    child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: tweets.twitterHandle,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17.0,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: ' ' + tweets.username,
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.grey),
                                    ),
                                    TextSpan(
                                      text: ' ${tweets.time}',
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.grey),
                                    ),
                                  ]),
                                  overflow: TextOverflow.ellipsis,
                                )),
                                flex: 5,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: Icon(
                                    Icons.expand_more,
                                    color: Colors.grey,
                                  ),
                                ),
                                flex: 1,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            tweets.tweet,
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.comment,
                                color: Colors.grey,
                              ),
                              Icon(
                                FontAwesomeIcons.retweet,
                                color: Colors.grey,
                              ),
                              Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.grey,
                              ),
                              Icon(
                                FontAwesomeIcons.shareAlt,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.featherAlt),
      ),
    );
  }
}
