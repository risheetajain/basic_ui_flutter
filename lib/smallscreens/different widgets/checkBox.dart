import 'package:flutter/material.dart';

class CheckBoxFlutter extends StatefulWidget {
  const CheckBoxFlutter({Key? key}) : super(key: key);

  @override
  _CheckBoxFlutterState createState() => _CheckBoxFlutterState();
}

class _CheckBoxFlutterState extends State<CheckBoxFlutter> {
  bool isHr = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Text("HR"),
        Checkbox(
            onChanged: (bool? value) {
              setState(() {
                isHr = value!;
              });
            },
            value: isHr)
      ],
    ));
  }
}
