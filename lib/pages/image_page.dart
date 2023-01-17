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
        // child: Image(
        //   width: 400,
        //   height: 400,
        //   fit: BoxFit.cover,
        //   image: AssetImage("assets/images/ic_image1.jpg"),
        // ),
        child: Image.network("https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png"),
      ),
    );
  }
}
