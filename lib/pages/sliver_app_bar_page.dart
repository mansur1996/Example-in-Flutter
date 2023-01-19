import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);
  static const String id = "sliver_app_bar_page";

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.greenAccent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text("SliverAppBar"),
              background: Image.asset("assets/images/ic_image1.jpg", fit: BoxFit.cover,),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(_buildList(20))
          ),
        ],
      ),
    );
  }

  List<Widget> _buildList(int count){
    List<Widget> items = [];

    for(int i = 0; i < count; i++){
      items.add(_itemList(i));
    }

    return items;
   }

   Widget _itemList(int item){
    return SizedBox(
      height: 50,
      child: Center(
        child: Text("Item ${item.toString()}"),
      )
    );
   }
}
