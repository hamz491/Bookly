import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/Search/Presentation/View/Widgets/Search_Results_ListView.dart';
import 'package:flutter/material.dart';

class Search_Results_Sectoin extends StatelessWidget {
  const Search_Results_Sectoin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Search Results',
          style: Styles.textStyle18,
        ),
        SizedBox(height: 10),
        Expanded(
          child: Search_Results_ListView(),
        ),
      ],
    );
  }
}
