import 'package:flutter/material.dart';
import 'twitter_post.dart';

void main() {
  runApp(TwitterApp());
}

class TwitterApp extends StatelessWidget {
  TwitterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.flight),
              onPressed: () {},
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {},
              color: Colors.blue,
            )
          ],
        ),
      ),

      //body, scroll view
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
              ),
            )
          ],
        ),
      ),

      //Bottom navigation bar, home, search, notification, messages
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail, size: 30), label: ''),
        ],
      ),

      //SideBar
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print('Drawer item 1 pressed');
                      }),
                  Text('Drawer Item 1'),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print('Drawer item 2 pressed');
                      }),
                  Text('Drawer Item 2'),
                ],
              ),
            ],
          ),
        ),
      ),

      endDrawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print('Drawer item 1 pressed');
                      }),
                  Text('Drawer Item 1'),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print('Drawer item 2 pressed');
                      }),
                  Text('Drawer Item 2'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
