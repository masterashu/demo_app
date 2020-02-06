import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  final Color themeColor = const Color.fromARGB(255, 140, 90, 227);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  List<String> vars = ["Common Emotion", "G.K. Score", "IQ", "Reflex Score"];
  List<double> vals = [83, 76.5, 76.3, 88.3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.deepPurple), onPressed: () {}),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "SCORE",
                        style: TextStyle(
                            fontSize: 32, color: widget.themeColor, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "82.7",
                        style: TextStyle(fontSize: 64),
                      ),
                      Text(
                        "Average Score: 57",
                        style: TextStyle(fontSize: 28, color: Colors.grey),
                      ),
                    ])),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                itemCount: vars.length,
                itemBuilder: (context, i) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: widget.themeColor, borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: <Widget>[
                        Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            vars[i],
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Container(color: Colors.white, width: 1),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "${vals[i]}",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Spacer(flex: 1),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(vertical: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: widget.themeColor,
            borderRadius:
                BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Text(
            "Return to Main Menu",
            style: TextStyle(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
    );
  }
}
