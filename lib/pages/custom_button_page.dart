import 'package:flutter/material.dart';

class CustomButtonPage extends StatefulWidget {
  const CustomButtonPage({Key? key}) : super(key: key);
  static const String id = "custom_button_page";

  @override
  State<CustomButtonPage> createState() => _CustomButtonPageState();
}

class _CustomButtonPageState extends State<CustomButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Custom Button",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20,right: 20),
          height: 50,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                )
            ),
            onPressed: (){

            },
            child: const Text(
              "sign up",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
