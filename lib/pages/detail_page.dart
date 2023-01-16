import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  static const String id = "detail_page";

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Detail",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.yellow,
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 500,
          child: const Text(
            "Detail Page",
            style: TextStyle(color: Colors.deepOrange, fontSize: 26),
          ),
        ),
      ),
    );
  }
}
