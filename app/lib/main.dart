import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Game Images",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: imagePage(),
    ));
  }
}

class imagePage extends StatefulWidget {
  @override
  _imagePageState createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  int letfimage = 9;
  int rightimage = 9;

  void changeimage() {
    setState(() {
      var random = Random();
      letfimage = random.nextInt(8) + 1;
      rightimage = random.nextInt(8) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          letfimage == rightimage ? 'you win ' : "try another one ",
          style: TextStyle(fontSize: 40),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: changeimage,
                  child: Image.asset('images/image-$letfimage.png')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: changeimage,
                  child: Image.asset('images/image-$rightimage.png')),
            ),
          ],
        ),
      ],
    );
  }
}
