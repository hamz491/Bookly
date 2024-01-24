import 'package:bookly/Features/Search/Presentation/View/Widgets/Search_View_Body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Search_View_Body(),
      ),
    );
  }
}
