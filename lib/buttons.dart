import 'package:basic_ui/listview.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  final _items = ["Male", "Female", "Others"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          //  mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: const Text("I am Text Button")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarms_outlined),
                label: const Text("Icon With Text Button")),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ListOfWigdgets()));
                },
                icon: const Icon(Icons.ac_unit)),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("helgh njhmchlo")));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))))),
              label: const Text("Elevated Button with Icon"),
              icon: const Icon(Icons.access_alarms),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("helgh njhmchlo")));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))))),
              child: const Text("Elevated Button"),
            ),
            InkWell(
              child: Image.asset("assets/welcome.png", width: 75, height: 75),
              onTap: () {
                print("7890");
              },
              onDoubleTap: () {
                print("ondouble");
              },
              onLongPress: () {
                print("onlong");
              },
            ),
            GestureDetector(
              child: Image.asset("assets/welcome.png", width: 75, height: 75),
              onTap: () {
                print("7890");
              },
              onDoubleTap: () {
                print("ondouble");
              },
              onLongPress: () {
                print("onlong");
              },
            ),
            FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.access_alarms)),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Text("Floating Button Extended"),
            ),
            // Expanded(
            //   child: DropdownButtonFormField<String>(
            //       value: _items[0],
            //       items: List.generate(_items.length, (index) {
            //         return DropdownMenuItem(
            //           child: Text(_items[index]),
            //         );
            //       }),
            //       onChanged: (val) {}),
            // ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.access_alarm_rounded)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.access_alarm_rounded))
              ],
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("Popup 1")),
                const PopupMenuItem(child: Text("Popup 2")),
                const PopupMenuItem(child: Text("Popup 3")),
                const PopupMenuItem(child: Text("Popup 4")),
                const PopupMenuItem(child: Text("Popup 5")),
                const PopupMenuItem(child: Text("Popup 6"))
              ];
            }),
            OutlinedButton(
                onPressed: () {}, child: const Text("outline button")),

            RawMaterialButton(
              onPressed: () {},
              child: const Text("material button",
                  style: TextStyle(color: Colors.amber)),
            )
          ]),
    );
  }
}
