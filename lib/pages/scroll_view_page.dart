import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  const ScrollViewPage({Key? key}) : super(key: key);
    static const String id = "scroll_view_page";

  @override
  State<ScrollViewPage> createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ScrollView",
          style: TextStyle(fontSize: 25, color: Colors.amberAccent),
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 250,
              ),
              Container(
                color: Colors.green,
                height: 250,
              ),
              Container(
                color: Colors.yellow,
                height: 250,
              ),
              Container(
                color: Colors.grey,
                height: 250,
              ),
              Container(
                color: Colors.blue,
                height: 250,
              ),
              Container(
                color: Colors.orange,
                height: 250,
              )
            ],
          ),
        )
    );
  }
}
