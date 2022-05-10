import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [Text("Tab 1"), Icon(Icons.ac_unit_rounded), Text("Tab 2")],
            ),
          ),
          body: TabBarView(children: [
            Container(color: Colors.green),
            Container(color: Colors.amber),
            Container(color: Colors.black),
          ])),
    );
  }
}
