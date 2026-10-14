
import 'package:movies_app_graduation/model/movie_details_response/movie_details_response.dart';

sealed class WishlistState {}

class WishlistInitial extends WishlistState {}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final List<Movie> movies;

  WishlistLoaded({required this.movies});

  int get count => movies.length;
}

class WishlistError extends WishlistState {
  final String message;

  WishlistError(this.message);
}

