import 'package:flutter/material.dart';
import 'package:project1/pages/expanded_page.dart';
import 'package:project1/pages/image_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25,fontFamily: 'Playfair'),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.navigate_next),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ExpandedPage.id);
          },
          onLongPress: (){
            Navigator.pushNamed(context, ImagePage.id);
          },
          child: Text(
            "Open detail page $count",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
