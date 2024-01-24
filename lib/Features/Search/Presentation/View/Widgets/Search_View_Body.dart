import 'package:bookly/Features/Search/Presentation/View/Widgets/Search_Results_Sectoin.dart';
import 'package:bookly/Features/Search/Presentation/View/Widgets/Text_Field_Section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search_View_Body extends StatelessWidget {
  const Search_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          Text_Field_Section(),
          SizedBox(height: 20),
          Expanded(child: Search_Results_Sectoin()),
        ],
      ),
    );
  }
}
