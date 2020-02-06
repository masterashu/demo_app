import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class GestureDetectionPage extends StatefulWidget {
  GestureDetectionPage({Key key}) : super(key: key);

  @override
  _GestureDetectionPageState createState() => _GestureDetectionPageState();
}

class _GestureDetectionPageState extends State<GestureDetectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Detecting Reflexes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset("assets/source.gif"),
            ),
          )
        ],
      ),
    );
  }
}
