import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/about/about_screen.dart';
import 'package:droidconke2020_flutter/ui/feed/feed_screen.dart';
import 'package:droidconke2020_flutter/ui/home/home_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/sessions_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: Provider.of<CupertinoTabController>(context),
      backgroundColor: Palette.darkBlack,
      tabBar: CupertinoTabBar(
        backgroundColor: Palette.darkBlack,
        activeColor: Palette.yellow,
        inactiveColor: Palette.white,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
            activeIcon: Afrikon('home', color: Palette.yellow),
            icon: Afrikon('home', color: Palette.white),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            activeIcon: Afrikon('bell', color: Palette.yellow),
            icon: Afrikon('bell', color: Palette.white),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            activeIcon: Afrikon('time', color: Palette.yellow),
            icon: Afrikon('time', color: Palette.white),
            title: Text('Sessions'),
          ),
          BottomNavigationBarItem(
            activeIcon: Afrikon('flower', color: Palette.yellow),
            icon: Afrikon('flower', color: Palette.white),
            title: Text('About'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomeScreen();
          case 1:
            return FeedScreen();
          case 2:
            return SessionsScreen();
          case 3:
            return AboutScreen();
          default:
            return HomeScreen();
        }
      },
    );
  }
}
