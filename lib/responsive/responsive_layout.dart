import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget webLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.webLayout,
      required this.tabletLayout});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return widget.mobileLayout;
        } else if (constraints.maxWidth < 1100) {
          return widget.tabletLayout;
        } else {
          return widget.webLayout;
        }
      },
    );
  }
}
