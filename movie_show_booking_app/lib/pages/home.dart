import 'package:flutter/material.dart';
import './allmovie_listview.dart';
import './people.dart';
import './saved.dart';
import './series.dart';
import '../scoped_models/moviemodal.dart';
import 'package:scoped_model/scoped_model.dart';
import '../models/movie.dart';

class HomePage extends StatefulWidget {
  MovieModel movielist = MovieModel();

  HomePage(this.movielist);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    widget.movielist.fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MovieModel>(
        builder: (BuildContext context, Widget child, MovieModel model) {
      return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).accentColor,
              title: Text(
                "Movie DB",
              ),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                new IconButton(
                  icon: new Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                ),
                new IconButton(
                  icon: new Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "MOVIES",
                  ),
                  Tab(
                    text: "SERIES",
                  ),
                  Tab(
                    text: "SAVED",
                  ),
                  Tab(
                    text: "PEOPLE",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                AllMovieView(model.MovieList),
                AllSeries(),
                AllSavedMovies(),
                AllPeople(),
              ],
            )
            // Card(
            // child: Container(
            // width: 700,
            // height: 400,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/food.jpg"),
            //     fit: BoxFit.fitWidth,
            //     alignment: Alignment.center,
            //   ),
            // ),
            // child: Text("YOUR TEXT"),
            // child: MovieView(),
            ),
      );
    });
  }
}
