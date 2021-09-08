import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'pages/all_search.dart';
import 'pages/completed_page.dart';
import 'pages/recieved_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CMD application"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.beenhere_rounded,
              title: "Completed",
              onclick: () => Navigator.of(context)),
          TabData(
              iconData: Icons.attach_email,
              title: "Recieved",
              onclick: () => Navigator.of(context)),
          TabData(iconData: Icons.search_rounded, title: "Search")
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return CompletedPage();
      case 1:
        return RecievedPage();
      default:
        return Allsearch();
    }
  }
}
