import 'package:movies_app_graduation/model/movie_response/movie_response.dart';

abstract class MoviesRepository {
  Future<MovieResponse> getAllMovies();
  Future<MovieResponse> getAllMoviesByGenre(String genre);

  Future<void> addToHistory(Movies movie);
  Future<List<Movies>> getWatchHistory();
  Future<void> clearHistory();
}
