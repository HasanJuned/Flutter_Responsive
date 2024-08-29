import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Products'),
            ),
            ListTile(
              title: Text('Stock'),
            ),
            ListTile(
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}