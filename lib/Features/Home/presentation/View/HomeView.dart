import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/BestSellerListview_Item.dart';
import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/Custom_AppBar.dart';
import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/Custom_ListView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Custom_ListView(),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            BestSellerListView_Item(),
          ],
        ),
      ),
    );
  }
}
