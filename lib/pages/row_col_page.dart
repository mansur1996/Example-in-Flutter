import 'package:flutter/material.dart';

class RowColPage extends StatefulWidget {
  const RowColPage({Key? key}) : super(key: key);
  static const String id = "row_col_page";

  @override
  State<RowColPage> createState() => _RowColPageState();
}

class _RowColPageState extends State<RowColPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row and Column",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 90,
                    width: 100,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              color: Colors.yellow,
              child: Stack(
                children: const [
                  Center(
                    child: Text("This is a text in Stack"),
                  ),
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 90,
                    width: 100,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
