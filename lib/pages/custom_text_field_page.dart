import 'package:flutter/material.dart';

class CustomTextFieldPage extends StatefulWidget {
  const CustomTextFieldPage({Key? key}) : super(key: key);
  static const String id = "custom_text_field_page";

  @override
  State<CustomTextFieldPage> createState() => _CustomTextFieldPageState();
}

class _CustomTextFieldPageState extends State<CustomTextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "CustomTextField",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email, color: Colors.grey,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "phone",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone, color: Colors.grey,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.password, color: Colors.grey,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "confirm",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.password, color: Colors.grey,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
