import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../scoped_models/moviemodal.dart';
import 'package:scoped_model/scoped_model.dart';
import './movie_details.dart';

class AllMovieView extends StatefulWidget {
  final List<Movie> movielist;

  AllMovieView(this.movielist);

  @override
  State<StatefulWidget> createState() {
    return _AllMovieViewState();
  }
}

class _AllMovieViewState extends State<AllMovieView> {
  @override
  void initState() {
    print(widget.movielist);

    for (var i in widget.movielist) {
      print(i.movie_name);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(moviename);
    return ScopedModelDescendant<MovieModel>(
      builder: (BuildContext context, Widget child, MovieModel model) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            RaisedButton(
                                child: new Image.network(
                                  model.MovieList[index].movie_image,
                                  height: 100.0,
                                ),
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            MovieDetailPage(
                                                index, widget.movielist)))),
                            Text(model.MovieList[index].movie_name)
                            // Divider()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          itemCount: model.MovieList.length,
        );
      },
    );
  }
}
