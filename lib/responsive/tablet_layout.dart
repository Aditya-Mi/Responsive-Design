import 'package:flutter/material.dart';
import 'package:responsive_design/colors.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/grid_view_item.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: color3,
        title: const Text(
          'Blogs',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      drawer: drawer,
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.8756,
        ),
        itemBuilder: (context, index) {
          return const GridViewItem();
        },
      ),
    );
  }
}
