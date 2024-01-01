import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/Custom_bookCard.dart';
import 'package:flutter/material.dart';

class Custom_ListView extends StatelessWidget {
  const Custom_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8),
              child: BookCard(),
            );
          },
        ),
      ),
    );
  }
}
