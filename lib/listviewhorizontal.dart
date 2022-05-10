import 'package:basic_ui/listviewbuilder.dart';
import 'package:flutter/material.dart';

class ListViewHorizontak extends StatefulWidget {
  const ListViewHorizontak({Key? key}) : super(key: key);

  @override
  _ListViewHorizontakState createState() => _ListViewHorizontakState();
}

class _ListViewHorizontakState extends State<ListViewHorizontak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
      return Text(index.toString()+"  ");
    }));
  }
}
