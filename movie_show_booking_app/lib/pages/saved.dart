import 'package:flutter/material.dart';

class AllSavedMovies extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AllSavedMoviesState();
  }
}

class _AllSavedMoviesState extends State<AllSavedMovies> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/food.jpg",
                          height: 280,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("First Image"),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/food.jpg",
                          height: 280,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("First Image"),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/food.jpg",
                          height: 280,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("First Image"),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/food.jpg",
                          height: 280,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("First Image"),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
