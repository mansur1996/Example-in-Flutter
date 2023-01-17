import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);
  static const String id = "pager_view_page";

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _pageController = PageController();
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "PagerView",
          style: TextStyle(fontSize: 25, color: Colors.amberAccent),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text("Page One"),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: const Center(
              child: Text("Page Two"),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(
              child: Text("Page Three"),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: const Center(
              child: Text("Page Four"),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          )
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.cyan[800],
        unselectedItemColor: Colors.blue,
        onTap: (int index) {
          _selectedPage = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn);
        },
      ),
    );
  }
}
