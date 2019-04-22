import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped_models/moviemodal.dart';
import '../models/movie.dart';

class MovieDetailPage extends StatelessWidget {
  int newindex;
  List<Movie> movielist = [];

  MovieDetailPage(this.newindex, this.movielist);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MovieModel>(
      builder: (BuildContext context, Widget child, MovieModel model) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Detail"),
            ),
            body: Container(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      new Image.network(
                        model.MovieList[newindex].movie_image,
                        height: 200.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(model.MovieList[newindex].movie_sinopsis),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text("Cast and Crews"),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(model.MovieList[newindex].caste)
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < model.MovieList[newindex].movie_rating
                            ? Icons.star
                            : Icons.star_border,
                      );
                    }),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
