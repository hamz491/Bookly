import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/Home/presentation/Widgets/alsolike_list_view_builder.dart';
import 'package:flutter/material.dart';

class Can_Also_Like_Sectoin extends StatelessWidget {
  const Can_Also_Like_Sectoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const alsoLike_ListView(),
      ],
    );
  }
}
