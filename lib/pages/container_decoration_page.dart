import 'package:flutter/material.dart';

class ContainerDecorationPage extends StatefulWidget {
  const ContainerDecorationPage({Key? key}) : super(key: key);
  static const String id = "container_decoration_page";

  @override
  State<ContainerDecorationPage> createState() => _ContainerDecorationPageState();
}

class _ContainerDecorationPageState extends State<ContainerDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Container Decoration",
          style: TextStyle(fontSize: 25, color: Colors.amberAccent),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage("assets/images/ic_image1.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ]
              )
            ),
          ),
        ),
      ),
    );
  }
}
