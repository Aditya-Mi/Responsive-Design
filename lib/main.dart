import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/mobile_layout.dart';
import 'package:responsive_design/responsive/responsive_layout.dart';
import 'package:responsive_design/responsive/tablet_layout.dart';
import 'package:responsive_design/responsive/web_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileLayout: MobileLayout(),
        webLayout: WebLayout(),
        tabletLayout: TabletLayout(),
      ),
    );
  }
}
