import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:profile_app/about.dart';
import 'package:profile_app/grid.dart';
import 'package:profile_app/main.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('My App'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Get.to(const MyHomePage(title: "My App"));
            },
          ),
          ListTile(
            title: const Text('List View'),
            onTap: () {
              Get.to(const AboutPage());
            },
          ),
          ListTile(
            title: const Text('Grid View'),
            onTap: () {
              Get.to(const GridPage());
            },
          ),
        ],
      ),
    );
  }
}
