import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Movie {
  String productid;
  String movie_name;
  int movie_id;
  dynamic movie_rating;
  String movie_sinopsis;
  String movie_image;
  dynamic caste;

  Movie(
      {@required productid,
      @required this.movie_name,
      @required this.movie_id,
      @required this.movie_rating,
      @required this.movie_sinopsis,
      @required this.movie_image,
      @required this.caste});
}

// void fetchData() {
//   http.get('https://flutter-movie.firebaseio.com/Movie.json').then(http.Response response){
//     print(json.decode(response.body));
//   };
// }
