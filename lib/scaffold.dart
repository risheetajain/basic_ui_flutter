import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  String getData = "";
  String getMyData = "";
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(
          children: [
            const Text("Name :Risheeta Jain"),
            const Text(
              "Designation",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Flutter developer",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            RichText(
                text: const TextSpan(
                    text: "ORGANIZATION ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                    text: "TechMET Solutions",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ])),
            TextField(
              keyboardType: TextInputType.number,
              controller: _controller,
            ),
            TextField(
              keyboardType: TextInputType.name,
              onChanged: (val) {
                setState(() {
                  getMyData = val;
                });
              },
            ),
            Text(getMyData),
            const TextField(
              keyboardType: TextInputType.number,
              readOnly: true,
            ),
            Text(getData),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Icon(Icons.email), Icon(Icons.phone)],
            ),
            Image.asset("assets/welcome.png",height: 100,width: 200,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            getData = _controller.text;
          });
        },
        child: const Icon(Icons.attachment),
      ),
      //to make text color white
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo,
                color: Colors.amber,
              ),
              label: "Add a photo"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm,
              ),
              label: "Alarm"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: "Add a photo"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm,
              ),
              label: "Alarm")
        ],
      ),
    );
  }
}
