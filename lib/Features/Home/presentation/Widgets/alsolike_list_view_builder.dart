import 'package:bookly/Core/utils/Assets.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Custom_bookCard.dart';
import 'package:flutter/material.dart';

class alsoLike_ListView extends StatelessWidget {
  const alsoLike_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .14,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 6),
              child: BookCard(
                Image:
                    "https://i0.wp.com/melanienewton.com/wp-content/uploads/AFreshStartForNewChristians-BookImage.png?resize=300%2C421&ssl=1",
              ),
            );
          },
        ),
      ),
    );
  }
}
