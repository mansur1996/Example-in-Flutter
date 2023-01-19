import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialPage extends StatefulWidget {
  const SpeedDialPage({Key? key}) : super(key: key);
  static const String id = "speed_dial_page";

  @override
  State<SpeedDialPage> createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "SpeedDial",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Center(
        child: Text("SpeedDial"),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(color : Colors.blue, size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print("Opened"),
        onClose: () => print("Closed"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility),
            backgroundColor: Colors.red,
            label: "First",
            labelStyle: TextStyle(fontSize: 18),
            onTap: () => print("First clicked")
          ),
          SpeedDialChild(
              child: Icon(Icons.brush),
              backgroundColor: Colors.blue,
              label: "Second",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () => print("Second clicked")
          ),
          SpeedDialChild(
              child: Icon(Icons.keyboard_voice),
              backgroundColor: Colors.green,
              label: "Third",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () => print("Third clicked")
          ),
        ],
      ),
    );
  }
}

