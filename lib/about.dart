import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getwidget/getwidget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var items = List<String>.generate(20, (i) => 'Bawonpak $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(8), 
            child: GFListTile(
              // leading: const Icon(Icons.add),
              titleText: (items[index]),
              subTitleText: 'Computer Science',
              icon: const Icon(Icons.favorite),
            ),
          );
        },
      ),
    );
  }
}