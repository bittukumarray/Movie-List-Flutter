import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/home.dart';
import './scoped_models/moviemodal.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final MovieModel model = MovieModel();
    return ScopedModel<MovieModel>(
      model: model,
      child: MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.black,
        ),
        routes: {
          '/': (BuildContext context) => HomePage(model),
        },
      ),
    );
  }
}
