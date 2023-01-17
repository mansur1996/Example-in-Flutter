import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);
  static const String id = "drawer_page";

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Drawer",
          style: TextStyle(fontSize: 25, color: Colors.amberAccent),
        ),
      ),
      body: const Center(
        child: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellowAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Mirzayev Mansur",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "mirzayevmansur@gmail.com",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
