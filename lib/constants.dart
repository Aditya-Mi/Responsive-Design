import 'package:flutter/material.dart';
import 'package:responsive_design/colors.dart';

class Styles {
  static TextStyle drawerTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 30,
    );
  }
}

var drawer = Drawer(
  backgroundColor: color3,
  child: Column(
    children: [
      const DrawerHeader(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.home_rounded,
          color: Colors.white,
        ),
        title: Text(
          'Home',
          style: Styles.drawerTextStyle(),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        title: Text(
          'Profile',
          style: Styles.drawerTextStyle(),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.settings_rounded,
          color: Colors.white,
        ),
        title: Text(
          'Settings',
          style: Styles.drawerTextStyle(),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.logout_rounded,
          color: Colors.white,
        ),
        title: Text(
          'Logout',
          style: Styles.drawerTextStyle(),
        ),
      ),
    ],
  ),
);
