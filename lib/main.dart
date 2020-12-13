import 'package:flutter/material.dart';
import 'user_feed.dart';

void main() {
  runApp(TwitterApp());
}

class TwitterApp extends StatelessWidget {
  const TwitterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  var twitterPages = [
    UserFeed(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: twitterPages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                color: pageIndex == 0 ? Colors.blue : Colors.grey,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
                color: pageIndex == 1 ? Colors.blue : Colors.grey,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.notifications,
                color: pageIndex == 2 ? Colors.blue : Colors.grey,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.mail,
                color: pageIndex == 3 ? Colors.blue : Colors.grey,
              )),
        ],
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        currentIndex: pageIndex,
      ),
    );
  }
}
