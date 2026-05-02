import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixmobapp/features/home/data/movie_model.dart';
import 'package:netflixmobapp/features/home/logic/state.dart';

class HomeCubit extends Cubit<HomeStates> {


  HomeCubit() : super(HomeInitialState());

  Dio dio = Dio();

  Future getNowPlaying() async {
    emit(HomeLoadingState());

    try {
     final response = await dio.get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=87903828b97a85b50c60fb3bbd960c55",
      );
     final result = MovieModel.fromJson(response.data);
      emit(HomeSuccessState(movieModel: result));
    } catch (e) {
      emit(HomeErrorState(errorMessage: e.toString()));
    }
  }
}
