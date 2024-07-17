import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart'; // Ensure you have this import if MyDrawer is a custom widget

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      drawer: const MyDrawer(), // Ensure MyDrawer is defined in your project
      body: GridView.builder(
        padding: const EdgeInsets.all(10), // Add padding if needed
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in GridView
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          childAspectRatio: 1, // Aspect ratio of the grid items
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4, // Elevation for shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(fontSize: 16), // Text style
              ),
            ),
          );
        },
        itemCount: 20, // Number of items in GridView
      ),
    );
  }
}
