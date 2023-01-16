import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);
  static const String id = "expanded_page";

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ExpandedPage",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.navigate_next),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
