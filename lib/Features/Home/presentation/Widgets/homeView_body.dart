import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Custom_AppBar.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Custom_ListView.dart';
import 'package:bookly/Features/Home/presentation/Widgets/bestSellerListView_Builder.dart';
import 'package:flutter/material.dart';

class HomeView_Body extends StatelessWidget {
  const HomeView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                Custom_ListView(),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 20),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView_Builder(),
          ),
        ],
      ),
    );
  }
}
