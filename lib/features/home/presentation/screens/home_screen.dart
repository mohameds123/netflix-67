import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixmobapp/features/home/logic/cubit.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/now_playing_widget.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/popular_widget.dart';
import 'package:netflixmobapp/features/home/presentation/widgets/toprated_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> HomeCubit()..getNowPlaying()..getTopRated()..getPopular(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [NowPlayingWidget(),PopularWidget(), TopRatedWidget()],
          ),
        ),
      ),
    );
  }
}
