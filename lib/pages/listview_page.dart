import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);
  static const String id = "listview_page";

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ListView",
          style: TextStyle(fontSize: 25, color: Colors.amberAccent),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _itemList(title: "Item One", image: "assets/images/ic_image1.jpg",color: Colors.green ),
          _itemList(title: "Item Two", image: "assets/images/ic_image1.jpg",color: Colors.red),
          _itemList(title: "Item Three", image: "assets/images/ic_image1.jpg",color: Colors.blue),
          _itemList(title: "Item Four", image: "assets/images/ic_image1.jpg",color: Colors.yellow),
          _itemList(title: "Item One", image: "assets/images/ic_image1.jpg",color: Colors.green ),
          _itemList(title: "Item Two", image: "assets/images/ic_image1.jpg",color: Colors.red),
          _itemList(title: "Item Three", image: "assets/images/ic_image1.jpg",color: Colors.blue),
          _itemList(title: "Item Four", image: "assets/images/ic_image1.jpg",color: Colors.yellow),
          _itemList(title: "Item One", image: "assets/images/ic_image1.jpg",color: Colors.green ),
          _itemList(title: "Item Two", image: "assets/images/ic_image1.jpg",color: Colors.red),
          _itemList(title: "Item Three", image: "assets/images/ic_image1.jpg",color: Colors.blue),
          _itemList(title: "Item Four", image: "assets/images/ic_image1.jpg",color: Colors.yellow),
          _itemList(title: "Item One", image: "assets/images/ic_image1.jpg",color: Colors.green ),
          _itemList(title: "Item Two", image: "assets/images/ic_image1.jpg",color: Colors.red),
          _itemList(title: "Item Three", image: "assets/images/ic_image1.jpg",color: Colors.blue),
          _itemList(title: "Item Four", image: "assets/images/ic_image1.jpg",color: Colors.yellow),
          _itemList(title: "Item One", image: "assets/images/ic_image1.jpg",color: Colors.green ),
          _itemList(title: "Item Two", image: "assets/images/ic_image1.jpg",color: Colors.red),
          _itemList(title: "Item Three", image: "assets/images/ic_image1.jpg",color: Colors.blue),
          _itemList(title: "Item Four", image: "assets/images/ic_image1.jpg",color: Colors.yellow),
        ],
      ),
    );
  }

  Widget _itemList({title, image, color}) {
    return Container(
      color: color,
      height: 100,
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: [
          Image(
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              image: AssetImage(image)),
           const SizedBox(width: 16,),
           Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}
