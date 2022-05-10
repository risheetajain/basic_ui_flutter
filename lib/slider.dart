import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Slider(
            min: 1.0,
            max: 10.0,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
              print(sliderValue);
            }),
        const CircularProgressIndicator(
          color: Colors.amber,
          value: 50,
          strokeWidth: 2,
          backgroundColor: Colors.black,
          valueColor: AlwaysStoppedAnimation(Colors.red),
        )
      ],
    ));
  }
}
