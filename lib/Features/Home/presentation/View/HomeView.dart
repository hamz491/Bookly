import 'package:bookly/Features/Home/presentation/Widgets/BestSellerListview_Item.dart';
import 'package:bookly/Features/Home/presentation/Widgets/homeView_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeView_Body(),
    );
  }
}



