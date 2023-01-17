import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);
  static const String id = "grid_view_page";

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grid View",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
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
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              image: AssetImage(image)),
          const SizedBox(height: 16,),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}
