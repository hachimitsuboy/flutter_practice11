import 'package:flutter/material.dart';
import 'package:image_gallery_saver_practice/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practice image gallery saver",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
