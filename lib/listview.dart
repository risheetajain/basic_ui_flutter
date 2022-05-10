import 'package:flutter/material.dart';

class ListOfWigdgets extends StatefulWidget {
  const ListOfWigdgets({Key? key}) : super(key: key);

  @override
  _ListOfWigdgetsState createState() => _ListOfWigdgetsState();
}

class _ListOfWigdgetsState extends State<ListOfWigdgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          
          children: const [
      ListTile(
        title: Text('Ttle'),
        subtitle: Text('Suntitle'),
        leading: Icon(Icons.list),
        trailing: Icon(Icons.arrow_right),
      ),
      ListTile(
        title: Text('ListView'),
        subtitle: Text('A scrollable, linear array of widgets.'),
        leading: Icon(Icons.list),
        trailing: Icon(Icons.arrow_right),
      ),
      ListTile(
        title: Text('GridView'),
        subtitle: Text('A scrollable, 2D array of widgets.'),
        leading: Icon(Icons.grid_on),
        trailing: Icon(Icons.arrow_right),
      ),
      ListTile(
        title: Text('CustomScrollView'),
        subtitle:
            Text('A scrollable widget that creates custom scroll effects.'),
        leading: Icon(Icons.vertical_align_center),
        trailing: Icon(Icons.arrow_right),
      ),
      ListTile(
        title: Text('PageView'),
        subtitle: Text(
            'A scrollable list of widgets that are each an entire screen.'),
        leading: Icon(Icons.pageview),
        trailing: Icon(Icons.arrow_right),
      )
    ]));
  }
}
