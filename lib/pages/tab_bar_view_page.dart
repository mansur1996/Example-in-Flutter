import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {
  const TabBarViewPage({Key? key}) : super(key: key);
  static const String id = "tab_bar_view_page";

  @override
  State<TabBarViewPage> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "TabBarView",
              style: TextStyle(fontSize: 25, color: Colors.amberAccent),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  // icon: Icon(Icons.home),
                  text: "home",
                ),
                Tab(
                  // icon: Icon(Icons.chat),
                  text: "chat",
                ),
                Tab(
                  // icon: Icon(Icons.settings),
                  text: "settings",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.yellow,
                child: const Center(
                  child: Text("Home"),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text("Chat"),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text("Settings"),
                ),
              )
            ],
          ),
        ));
  }
}
