import 'package:bookly/Features/Home/presentation/Widgets/BestSellerListview_Item.dart';
import 'package:flutter/material.dart';

class Search_Results_ListView extends StatelessWidget {
  const Search_Results_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListView_Item(),
        );
      },
    );
  }
}
