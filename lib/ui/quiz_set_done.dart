import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizSetDonePage extends StatefulWidget {
  final Color themeColor = const Color.fromARGB(255, 140, 90, 227);

  @override
  _QuizSetDonePageState createState() => _QuizSetDonePageState();
}

class _QuizSetDonePageState extends State<QuizSetDonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          "Tests",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.25,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 72, bottom: 72),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Congratulations!\nYou have completed this quiz.",
              style: TextStyle(fontSize: 36),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Text(
                  "Go to the next Quiz",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: widget.themeColor,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: InkWell(
              onTap: () {
                int count = 0;
                Navigator.popUntil(context, (route) {
                  return count++ == 2;
                });
              },
              child: Container(
                child: Text(
                  "Back To Menu",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    color: widget.themeColor),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
          ),
        ],
      ),
    );
  }
}
