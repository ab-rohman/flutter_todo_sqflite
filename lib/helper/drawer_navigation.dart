import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset("assets/images/avatar.png"),
              accountName: Text("AbdulRohman"),
              accountEmail: Text("@Admin"),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
