import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({Key? key}) : super(key: key);
  static const String id = "gesture_detector_page";

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "GestureDetector",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: const Text("Click me"),
          onTap: (){
            if (kDebugMode) {
              print("Clicked me");
            }
          },
        ),
      ),
    );
  }
}
