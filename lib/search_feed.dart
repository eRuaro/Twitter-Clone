import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchFeed extends StatefulWidget {
  SearchFeed({Key key}) : super(key: key);

  @override
  _SearchFeedState createState() => _SearchFeedState();
}

class _SearchFeedState extends State<SearchFeed> {
  static final showCard = true; // Set to false to show Stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Search',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(child: showCard ? _buildCard() : null),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(FontAwesomeIcons.featherAlt),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  // #docregion Card
  Widget _buildCard() => SizedBox(
        height: 700,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text('Trends for You',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
              ),
              ListTile(
                title: Text('Google',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('1.67M Tweets'),
              ),
              Divider(),
              ListTile(
                title: Text('Facebook',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('1.1M Tweets'),
              ),
              ListTile(
                title: Text('WAIT WHAT',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('72.2K Tweets'),
              ),
              ListTile(
                title: Text('Cyberpunk 2077',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('600K Tweets'),
              ),
              ListTile(
                title: Text('Microsoft',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('999K Tweets'),
              ),
              ListTile(
                title: Text('Android',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('160K Tweets'),
              ),
              ListTile(
                title: Text('Machine Learning',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('79K Tweets'),
              ),
            ],
          ),
        ),
      );
  // #enddocregion Card
}
