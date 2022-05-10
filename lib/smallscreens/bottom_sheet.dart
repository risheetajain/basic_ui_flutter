import 'package:flutter/material.dart';

class BottomSheetFlutter extends StatefulWidget {
  const BottomSheetFlutter({Key? key}) : super(key: key);

  @override
  _BottomSheetFlutterState createState() => _BottomSheetFlutterState();
}

class _BottomSheetFlutterState extends State<BottomSheetFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextButton(
            child:
                const Text("BOTTOM Sheet", style: TextStyle(color: Colors.red)),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: const [
                        Text("vfdvd"),
                        ListTile(
                          leading: Icon(Icons.copy),
                          title: Text('Copy Link'),
                        ),
                        ListTile(
                          leading: Icon(Icons.edit),
                          title: Text('Edit'),
                        ),
                      ],
                    );
                  });
            })
      ],
    ));
  }
}
