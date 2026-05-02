import 'package:netflixmobapp/features/home/data/movie_model.dart';

class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeSuccessState extends HomeStates {
  MovieModel movieModel;
  HomeSuccessState ({required this.movieModel});
}

class HomeErrorState extends HomeStates {
  final String errorMessage;
  HomeErrorState({required this.errorMessage});
}