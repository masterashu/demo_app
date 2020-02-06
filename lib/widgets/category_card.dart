import 'package:flutter/material.dart';

class Category {
  String id, heading, subHeading;
  int quizCount, timeCount;

  Category({this.id, this.heading, this.subHeading, this.quizCount, this.timeCount});
}

class CategoryCard extends StatelessWidget {
  final Category category;
  final Widget dest;
  final bool active;

  CategoryCard(this.category, this.dest, {this.active = false, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: (active) ? Color.fromARGB(255, 140, 90, 227) : null,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => dest));
        },
        splashColor: (active) ? Colors.deepPurple : Color.fromARGB(255, 140, 90, 227),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: (active) ? Colors.white : Color.fromARGB(255, 140, 90, 227),
                  foregroundColor: (active) ? Color.fromARGB(255, 140, 90, 227) : Colors.white,
                  radius: 32,
                  child: Text(
                    category.id,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        category.heading,
                        style: TextStyle(fontSize: 20, color: (active) ? Colors.white : null),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 16),
                      child: Text(
                        category.subHeading,
                        style: TextStyle(fontSize: 18, color: (active) ? Colors.white : null),
                      ),
                    ),
                    Divider(color: (active) ? Colors.white : Colors.black),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      children: <Widget>[
                        Icon(Icons.question_answer, color: (active) ? Colors.white : null),
                        Text(
                          " ${category.quizCount} Questions",
                          style: TextStyle(color: (active) ? Colors.white : null),
                        ),
                        Spacer(),
                        Icon(Icons.timer, color: (active) ? Colors.white : null),
                        Text(" ${category.timeCount} Minutes",
                            style: TextStyle(color: (active) ? Colors.white : null)),
                        Spacer(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
