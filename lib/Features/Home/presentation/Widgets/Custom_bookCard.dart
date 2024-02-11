import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.Image});
  final String Image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: AspectRatio(
        aspectRatio: 3 / 4.3,
        child: Container(
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            border: Border.all(
              width: .5,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(Image),
            ),
          ),
        ),
      ),
    );
  }
}
