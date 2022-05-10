import 'package:flutter/material.dart';

class SwitchFlutter extends StatefulWidget {
  const SwitchFlutter({Key? key}) : super(key: key);

  @override
  _SwitchFlutterState createState() => _SwitchFlutterState();
}

class _SwitchFlutterState extends State<SwitchFlutter> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const Text(
            "Switch",
            style: TextStyle(color: Colors.red),
          ),
          Switch(
              value: isOn,
              onChanged: (value) {
                setState(() {
                  isOn = value;
                });
              })
        ]));
  }
}
