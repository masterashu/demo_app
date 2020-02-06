import 'package:flutter/material.dart';
import 'package:forget_not/ui/quiz_set_done.dart';

class MCQuestionWidget extends StatefulWidget {
  MCQuestionWidget({Key key}) : super(key: key);
  final Color themeColor = const Color.fromARGB(255, 140, 90, 227);
  @override
  _MCQuestionWidgetState createState() => _MCQuestionWidgetState();
}

class _MCQuestionWidgetState extends State<MCQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomPaint(
        painter: CustomCircle(widget.themeColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AppBar(
              leading: BackButton(),
              centerTitle: true,
              title: Text("Question 01/10"),
              actions: <Widget>[
                GestureDetector(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.timer),
                      Text(
                        " 54:20 ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              child: Text(
                "What is the Answer of this question?",
                style: TextStyle(color: Colors.white, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var i in [1, 2, 3, 4])
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: Text(
                            "Option $i",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          width: MediaQuery.of(context).size.width * 3 / 4,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: (i < 4) ? Colors.grey : widget.themeColor, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(8),
                        splashColor: widget.themeColor,
                      ),
                    ),
                ],
              ),
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                color: widget.themeColor,
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => QuizSetDonePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCircle extends CustomPainter {
  final Color color;
  CustomCircle(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint()..color = this.color;
    Offset o = Offset(size.width / 2, size.height * (-1 / 8));
    canvas.drawCircle(o, size.width, p);
  }

  @override
  bool shouldRepaint(CustomCircle oldDelegate) {
    return oldDelegate.color != this.color;
  }
}
