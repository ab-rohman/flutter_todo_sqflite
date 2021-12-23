import 'package:flutter/material.dart';
import 'package:flutter_todo_sqflite/screen/categories_screen.dart';
import 'package:flutter_todo_sqflite/screen/home_screen.dart';

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
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text("Categories"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CategoriesScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
