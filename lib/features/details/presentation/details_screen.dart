import 'package:flutter/material.dart';
import 'package:netflixmobapp/features/details/presentation/widgets/details_widget.dart';
import 'package:netflixmobapp/features/details/presentation/widgets/more_like_widget.dart';
import 'package:netflixmobapp/features/home/data/movie_model.dart';

class DetailsScreen extends StatelessWidget {
  Results results;
  DetailsScreen({super.key,required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailWidget(results: results,),

            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 110,
                height: 4,
                decoration: BoxDecoration(
                    color: Colors.red
                ),
              ),
            ),

            SizedBox(
              height: 24,
            ),
            MoreLikeWidget(),

          ],
        ),
      ),
    );
  }
}