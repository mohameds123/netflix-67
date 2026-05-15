import 'package:flutter/material.dart';

class MoreLikeWidget extends StatelessWidget {
  const MoreLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 220,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0.2,
              crossAxisSpacing: 10,
              childAspectRatio: 1.2


          ),
          itemBuilder:(context,index){
            return Image.asset("assets/images/more_like_test.png");
          }
      ),
    );
  }
}