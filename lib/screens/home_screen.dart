import 'package:flutter/material.dart';
import 'package:netflixmobapp/widgets/now_playing_widget.dart';
import 'package:netflixmobapp/widgets/popular_widget.dart';
import 'package:netflixmobapp/widgets/toprated_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [NowPlayingWidget(),PopularWidget(), TopRatedWidget()],
        ),
      ),
    );
  }
}
