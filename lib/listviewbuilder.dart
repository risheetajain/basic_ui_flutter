import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List intro = [
    {"name": "risheeta", "class": 12, "city": "nashik"},
    {"name": "ali", "class": 13, "city": "hyderabad"},
    {"name": "rishi", "class": 14, "city": "jodhpur"},
    {"name": "risheeta jain", "class": 15, "city": "indore"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: intro.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(intro[index]["city"]),
                  title: Text(intro[index]["name"]),
                  subtitle: Text(intro[index]["class"].toString()));
            }));
  }
}
