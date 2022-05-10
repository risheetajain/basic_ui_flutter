import 'package:flutter/material.dart';

class DropDownFlutter extends StatefulWidget {
  const DropDownFlutter({Key? key}) : super(key: key);

  @override
  _DropDownFlutterState createState() => _DropDownFlutterState();
}

class _DropDownFlutterState extends State<DropDownFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButtonFormField(items: const <DropdownMenuItem<String>>[
        DropdownMenuItem(child: Text("dropdown")),
        DropdownMenuItem(child: Text("dropdown11")),
      ], onChanged: (value) {}),
    );
  }
}
