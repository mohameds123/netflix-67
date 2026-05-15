import 'package:flutter/material.dart';
import 'package:netflixmobapp/features/home/data/movie_model.dart';

class DetailWidget extends StatelessWidget {
  Results results;
  DetailWidget({super.key,required this.results});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://image.tmdb.org/t/p/w500${results.posterPath}"),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(results.title!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
              Row(
                children: [
                  Text(results.releaseDate!,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 41,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Text("+16",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(results.voteCount!.toString(),
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(results.overview!,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                ),

              ),
              SizedBox(
                height: 64,
              ),
              // Row(
              //   spacing: 36,
              //   children: [
              //     Column(
              //       children: [
              //         Image.asset("assets/icons/add_icon.png",),
              //         Text("My List",
              //           style: TextStyle(
              //             fontSize: 9,
              //             color: Colors.white,
              //
              //           ),
              //         )
              //
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Image.asset("assets/icons/like_icon.png",),
              //         Text("Rate",
              //           style: TextStyle(
              //             fontSize: 9,
              //             color: Colors.white,
              //
              //           ),
              //         )
              //
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Image.asset("assets/icons/share_icon.png",),
              //         Text("Share",
              //           style: TextStyle(
              //             fontSize: 9,
              //             color: Colors.white,
              //
              //           ),
              //         )
              //
              //       ],
              //     ),
              //
              //   ],
              // ),

            ],
          ),
        ),
      ],
    );
  }
}