import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixmobapp/features/home/logic/cubit.dart';
import 'package:netflixmobapp/features/home/logic/state.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular",
          style: TextStyle(
            fontSize: 16,
            //fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "Inter",
          ),
        ),
        BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is HomeSuccessState) {
              return SizedBox(
                height: 158,
                child: ListView.builder(
                  itemCount: state.movieModel.results!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w500${state.movieModel.results![index].posterPath!}",
                      ),
                    );
                  },
                ),
              );
            } else if (state is HomeErrorState) {
              return Center(child: Text(state.errorMessage));
            }
            return SizedBox();
          },
        ),
      ],
    );
  }
}
