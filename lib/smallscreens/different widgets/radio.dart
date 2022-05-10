import 'package:flutter/material.dart';

enum Gender { male, female, others }

class RadioFlutter extends StatefulWidget {
  const RadioFlutter({Key? key}) : super(key: key);

  @override
  _RadioFlutterState createState() => _RadioFlutterState();
}

class _RadioFlutterState extends State<RadioFlutter> {
  Gender gender = Gender.female;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      const Text("Male"),
      Radio(
          value: Gender.male,
          groupValue: gender,
          onChanged: (val) {
            setState(() {
              gender = val as Gender;
            });
          }),
      const Text("Female"),
      Radio(
          value: Gender.female,
          groupValue: gender,
          onChanged: (val) {
            setState(() {
              gender = val as Gender;
            });
          }),
      const Text("Others"),
      Radio(
          value: Gender.others,
          groupValue: gender,
          onChanged: (val) {
            setState(() {
              gender = val as Gender;
            });
          })
    ]));
  }
}
