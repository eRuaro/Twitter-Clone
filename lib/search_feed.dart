import 'dart:ui';

import 'package:flutter/material.dart';
import 'trends_for_you.dart';
import 'trends.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchFeed extends StatefulWidget {
  SearchFeed({Key key}) : super(key: key);

  @override
  _SearchFeedState createState() => _SearchFeedState();
}

class _SearchFeedState extends State<SearchFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Search Page',
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.account_circle_rounded,
          color: Colors.grey,
          size: 40,
        ),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int position) {
          Trends trends = TrendsForYou.getTrend(position);

          return Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: RichText(
                        text: TextSpan(
                            text: trends.subject,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.0,
                              color: Colors.black,
                            )),
                      ),
                    )),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
