import 'package:flutter/material.dart';
import 'package:project1/pages/detail_page.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/image_page.dart';
import 'package:project1/pages/row_col_page.dart';
import 'package:project1/pages/expanded_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        DetailPage.id: (context) => const DetailPage(),
        ImagePage.id: (context) => const ImagePage(),
        RowColPage.id: (context) => const RowColPage(),
        ExpandedPage.id: (context) => const ExpandedPage(),
      }
    );
  }
}