import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:forget_not/ui/gesture_detector.dart';
import 'package:forget_not/ui/mcq_widget.dart';
import 'package:forget_not/ui/score_page.dart';
import 'package:forget_not/widgets/category_card.dart';

class QuizzesPage extends StatefulWidget {
  QuizzesPage({Key key}) : super(key: key);
  final Color themeColor = const Color.fromARGB(255, 140, 90, 227);
  final int setCount = 10;

  @override
  _QuizzesPageState createState() => _QuizzesPageState();
}

class _QuizzesPageState extends State<QuizzesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          "Tests",
          style: TextStyle(color: Colors.black),
        ),
//        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.25,
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(bottom: 80),
          itemCount: widget.setCount,
          itemBuilder: (context, i) {
            return CategoryCard(
              Category(
                  id: "${i + 1}",
                  heading: "Set ${i + 1}",
                  subHeading: "Info: Basic Test",
                  quizCount: 20,
                  timeCount: 30),
              (i == 0) ? MCQuestionWidget() : (i == 1) ? GestureDetectionPage() : Scaffold(),
              active: i == 0,
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(vertical: 12),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: widget.themeColor,
            borderRadius:
                BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Text(
            "Finish Test",
            style: TextStyle(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ScorePage()));
        },
      ),
    );
  }
}
