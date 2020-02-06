import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forget_not/main.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  AnimationController _scale;
  AnimationController _scale2;

  switchToMain() async {
    Timer(Duration(milliseconds: 2600), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  void initState() {
    super.initState();
    _scale = AnimationController(vsync: this);
    _scale2 = AnimationController(vsync: this);
    setState(() {
      _scale.animateTo(1, curve: Curves.easeInCubic, duration: Duration(seconds: 2));
      _scale2.animateTo(1, curve: Curves.easeIn, duration: Duration(milliseconds: 2500));
      _scale2.animateTo(1, curve: Curves.easeIn, duration: Duration(milliseconds: 2500));
    });
    switchToMain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RotationTransition(
              turns: _scale2,
              child: ScaleTransition(
                scale: _scale,
                child: Transform.rotate(
                  angle: _scale.value * 480,
                  child: Icon(
                    Icons.ac_unit,
                    size: 200,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
