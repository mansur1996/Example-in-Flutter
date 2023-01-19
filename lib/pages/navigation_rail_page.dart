import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);
  static const String id = "navigation_rail_page";

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NavigationRail",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
              selectedIndex: _selectedIndex,
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.favorite_border),
                    label: Text("First"),
                    selectedIcon: Icon(Icons.favorite)),
                NavigationRailDestination(
                    icon: Icon(Icons.bookmark_border),
                    label: Text("Second"),
                    selectedIcon: Icon(Icons.book)),
                NavigationRailDestination(
                    icon: Icon(Icons.star_border),
                    label: Text("Third"),
                    selectedIcon: Icon(Icons.star)),
              ]),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
              child: Center(
            child: Text("Selected index : $_selectedIndex"),
          ))
        ],
      ),
    );
  }
}
