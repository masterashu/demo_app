import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forget_not/ui/mcq_widget.dart';
import 'package:forget_not/ui/quizzes_page.dart';

class StartPage extends StatefulWidget {
  final CameraDescription camera;
  StartPage({this.camera, Key key}) : super(key: key);
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 2),
          Center(
            child: Icon(
              Icons.account_circle,
              size: 160,
            ),
          ),
          Spacer(flex: 1),
          Text(
            "Welcome to Forget Me Not!",
            style: Theme.of(context).textTheme.apply(fontSizeDelta: 10).title,
          ),
          Spacer(flex: 1),
          Text(
            "Remember,\nMangoes are yellow and Apples are red.",
            style: Theme.of(context).textTheme.apply(fontSizeDelta: 10).caption,
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 1),
          InkWell(
            splashColor: Colors.white24,
            borderRadius: BorderRadius.circular(40),
            child: Container(
              child: Text(
                "Start",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(colors: [Colors.purple, Colors.indigo]),
                boxShadow: [
                  BoxShadow(
                      offset: Offset.zero, blurRadius: 10, spreadRadius: 2, color: Colors.grey)
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizzesPage()));
            },
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
