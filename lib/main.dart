import 'package:flutter/material.dart';

import 'home/canvas_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snake In Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CanvasPage(),
    );
  }
}
