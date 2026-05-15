import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixmobapp/features/home/logic/cubit.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/header_widget.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/now_playing_widget.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/popular_widget.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/toprated_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..getNowPlaying()
        ..getTopRated()
        ..getPopular(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF8B0000), // dark Netflix red
                Color(0xFF1A0000), // very dark red
                Color(0xFF000000), // black
              ],
              stops: [0.0, 0.35, 1.0],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  HeaderWidget(),
                  NowPlayingWidget(),
                  PopularWidget(),
                  TopRatedWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}