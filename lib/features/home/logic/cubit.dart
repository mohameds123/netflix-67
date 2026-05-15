import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixmobapp/core/const/api_const.dart';
import 'package:netflixmobapp/features/home/data/movie_model.dart';
import 'package:netflixmobapp/features/home/logic/state.dart';

class HomeCubit extends Cubit<HomeStates> {


  HomeCubit() : super(HomeInitialState());

  Dio dio = Dio();

  Future getNowPlaying() async {
    emit(HomeLoadingState());

    try {
     final response = await dio.get(
        ApiConst.nowPlaying,
      );
     final result = MovieModel.fromJson(response.data);
      emit(HomeSuccessState(movieModel: result));
    } catch (e) {
      emit(HomeErrorState(errorMessage: e.toString()));
    }
  }
  Future getTopRated() async {
    emit(HomeLoadingState());

    try {
      final response = await dio.get(
        ApiConst.topRated,
      );
      final result = MovieModel.fromJson(response.data);
      emit(HomeSuccessState(movieModel: result));
    } catch (e) {
      emit(HomeErrorState(errorMessage: e.toString()));
    }
  }
  Future getPopular() async {
    emit(HomeLoadingState());

    try {
      final response = await dio.get(
        ApiConst.popular,
      );
      final result = MovieModel.fromJson(response.data);
      emit(HomeSuccessState(movieModel: result));
    } catch (e) {
      emit(HomeErrorState(errorMessage: e.toString()));
    }
  }
}
