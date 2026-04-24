import 'package:flutter/material.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Rated",
          style: TextStyle(
            fontSize: 16,
            //fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "Inter",

          ),
        ),
        SizedBox(
          height: 158,
          child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {


              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset("assets/images/test_movies.png"),
              );
            },
          ),
        ),
      ],
    );
  }
}
