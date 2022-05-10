import 'package:flutter/material.dart';

class PopUpMenuFlutter extends StatefulWidget {
  const PopUpMenuFlutter({Key? key}) : super(key: key);

  @override
  _PopUpMenuFlutterState createState() => _PopUpMenuFlutterState();
}

class _PopUpMenuFlutterState extends State<PopUpMenuFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextButton(
            child: const Text("PopupMenu", style: TextStyle(color: Colors.red)),
            onPressed: () {}),
        PopupMenuButton(itemBuilder: (context) {
          return [
            const PopupMenuItem(child: Text("Popup 1")),
            const PopupMenuItem(child: Text("Popup 2")),
            const PopupMenuItem(child: Text("Popup 3")),
            const PopupMenuItem(child: Text("Popup 4")),
            const PopupMenuItem(child: Text("Popup 1")),
            const PopupMenuItem(child: Text("Popup 1"))
          ];
        })
      ],
    ));
  }
}
