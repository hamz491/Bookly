import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/Custom_AppBar.dart';
import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/Custom_bookCard.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(),
            BookCard(),
          ],
        ),
      ),
    );
  }
}
