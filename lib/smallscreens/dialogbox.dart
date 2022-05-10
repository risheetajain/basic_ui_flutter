import 'package:flutter/material.dart';

class DialogBoxFlutter extends StatefulWidget {
  const DialogBoxFlutter({Key? key}) : super(key: key);

  @override
  _DialogBoxFlutterState createState() => _DialogBoxFlutterState();
}

class _DialogBoxFlutterState extends State<DialogBoxFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextButton(
          child: const Text("DialogBox", style: TextStyle(color: Colors.red)),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: const Text("Title",
                          style: TextStyle(color: Colors.red)),
                      content: const Text("Contents "),
                      actions: [
                        TextButton(
                          child: const Text("Confirm",
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: const Text("cancel",
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: const Text("Confirm",
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: const Text("cancel",
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {},
                        )
                      ]);
                });
          })
    ]));
  }
}
