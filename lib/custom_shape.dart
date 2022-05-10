import 'package:flutter/material.dart';

class CustomShape extends StatefulWidget {
  const CustomShape({Key? key}) : super(key: key);

  @override
  _CustomShapeState createState() => _CustomShapeState();
}

class _CustomShapeState extends State<CustomShape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5),
                    color: Colors.blue)),
            const CircleAvatar(
              backgroundColor: Colors.red,
            ),
          ],
        ),
        const Card(
            elevation: 20, color: Colors.amber, child: Text("Risheeta Jain")),
        const ListTile(
          title: Text("title"),
          subtitle: Text("Subtitle"),
          trailing: Text("Trailing"),
          leading: Text("Leading"),
        ),
        const ListTile(
          title: Text("Flutter developer"),
          subtitle: Text("Risheeta jain"),
          trailing: CircleAvatar( child:Icon(Icons.mobile_friendly)),
          leading: Icon(Icons.code),
        )
        // Container(width:100,height:100,color:Colors.blue)
      ],
    ));
  }
}
