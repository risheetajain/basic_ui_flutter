import 'package:flutter/material.dart';

class ListViewHorizontak extends StatefulWidget {
  const ListViewHorizontak({Key? key}) : super(key: key);

  @override
  _ListViewHorizontakState createState() => _ListViewHorizontakState();
}

class _ListViewHorizontakState extends State<ListViewHorizontak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemCount: 20,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Text(index.toString() + "  ");
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Text("Risheeta");
      },
    ));
  }
}
