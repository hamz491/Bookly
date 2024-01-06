import 'package:bookly/Core/utils/Assets.dart';
import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BestSellerListView_Item extends StatelessWidget {
  const BestSellerListView_Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.ktestimage),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                'Harry Potter and the Goblet of Fire',
                style: Styles.textStyle20.copyWith(
                  fontFamily: ksectrafont,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'J.K. Rowling',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '19.99 €',
              style: Styles.textStyle20,
            ),
          ],
        ),
      ],
    );
  }
}
