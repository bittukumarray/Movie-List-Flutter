import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/movie.dart';

class MovieModel extends Model {
  List<Movie> _MovieList = [];

  List<Movie> get MovieList {
    return _MovieList;
  }

  void fetchData() {
    http
        .get('https://flutter-movie.firebaseio.com/Movie.json')
        .then((http.Response response) {
      final List<Movie> fetchedMovielist = [];
      // print(json.decode(response.body));
      final Map<String, dynamic> movielistData = json.decode(response.body);

      movielistData.forEach((String id, dynamic newmovie) {
        final Movie movie = Movie(
          productid: newmovie['id'],
          movie_name: newmovie['movie_name'],
          caste: newmovie['caste'],
          movie_id: newmovie['movie_id'],
          movie_image: newmovie['movie_image'],
          movie_rating: newmovie['movie_rating'],
          movie_sinopsis: newmovie['movie_sinopsis'],
        );
        fetchedMovielist.add(movie);
        // print(movie.caste);
      });
      _MovieList = fetchedMovielist;
      // for (var i in _MovieList) {
      //   print(i.caste);
      // }

      notifyListeners();
    });
  }
}
