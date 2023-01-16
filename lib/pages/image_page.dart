import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);
  static const String id = "image_page";

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ImagePage",
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
      body: Center(
        child: TextButton(
          onPressed: () {
            print("pressed");
          },
          child: const Text(
            "TextButton",
            style: TextStyle(color: Colors.orange, fontSize: 26),
          ),
        ),
      ),
    );
  }
}
