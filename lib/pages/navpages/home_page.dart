import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Menu Text
        Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            )),
        SizedBox(height: 40),
        // Discover Text
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: AppLargeText(text: "Discover"),
        ),
        SizedBox(
          height: 40,
        ),
        // Tabbar
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: ,
              tabs: [
                Tab(
                  text: "Places",
                ),
                Tab(
                  text: "Inspirations",
                ),
                Tab(
                  text: "Emotions",
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
              controller: _tabController,
              children: [Text("Hi"), Text("There"), Text("Bye !")]),
        )
      ],
    ));
  }
}

class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    throw UnimplementedError();
  }


}

class _CirclePainter extends BoxPainter{
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
  }
  
}