import 'package:bookly/Core/utils/Assets.dart';
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
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.ktestimage),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
