import 'package:bookly/Core/utils/Assets.dart';
import 'package:flutter/material.dart';

class Book_Details_Book_Card extends StatelessWidget {
  const Book_Details_Book_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      child: AspectRatio(
        aspectRatio: 3 / 4.5,
        child: Container(
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.ktestimage),
            ),
          ),
        ),
      ),
    );
  }
}
