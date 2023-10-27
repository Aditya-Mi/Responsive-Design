import 'package:flutter/material.dart';
import 'package:responsive_design/colors.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/grid_view_item.dart';
import 'package:responsive_design/popular_list_item.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color3,
        title: const Text(
          'Blogs',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Home',
              style: Styles.drawerTextStyle(),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Profile',
              style: Styles.drawerTextStyle(),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Settings',
              style: Styles.drawerTextStyle(),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Logout',
              style: Styles.drawerTextStyle(),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            const SizedBox(
              width: 150,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9090,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const GridViewItem();
                },
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            SizedBox(
              width: w * 0.25,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 7.5,
                    child: Container(
                      width: w * 0.25,
                      decoration: BoxDecoration(
                          color: color3,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                0.25,
                              ),
                              blurRadius: 4,
                            ),
                          ]),
                      alignment: Alignment.center,
                      child: const Text(
                        'Popular',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: w * 0.25,
                      height: h * 0.5,
                      child: ListView.separated(
                        clipBehavior: Clip.none,
                        padding: const EdgeInsets.only(top: 30),
                        itemCount: 4,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemBuilder: (context, index) {
                          return const PopularListItem();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
