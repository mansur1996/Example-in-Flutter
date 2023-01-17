import 'package:flutter/material.dart';
import 'package:project1/pages/alert_dialog_page.dart';
import 'package:project1/pages/detail_page.dart';
import 'package:project1/pages/drawer_page.dart';
import 'package:project1/pages/expanded_page.dart';
import 'package:project1/pages/grid_view_page.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/image_page.dart';
import 'package:project1/pages/listview_page.dart';
import 'package:project1/pages/row_col_page.dart';
import 'package:project1/pages/scroll_view_page.dart';
import 'package:project1/pages/page_view_page.dart';
import 'package:project1/pages/tab_bar_view_page.dart';

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
        home: const TabBarViewPage(),
        routes: {
          HomePage.id: (context) => const HomePage(),
          DetailPage.id: (context) => const DetailPage(),
          ImagePage.id: (context) => const ImagePage(),
          RowColPage.id: (context) => const RowColPage(),
          ExpandedPage.id: (context) => const ExpandedPage(),
          AlertDialogPage.id: (context) => const AlertDialogPage(),
          DrawerPage.id: (context) => const DrawerPage(),
          ListViewPage.id: (context) => const ListViewPage(),
          ScrollViewPage.id: (context) => const ScrollViewPage(),
          GridViewPage.id: (context) => const GridViewPage(),
          PageViewPage.id: (context) => const PageViewPage(),
          TabBarViewPage.id: (context) => const TabBarViewPage(),
        });
  }
}
