import 'package:bookly/Features/Home/presentation/Widgets/Book_Details_Section.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Can_Also_Like_Sectoin.dart';
import 'package:bookly/Features/Home/presentation/Widgets/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';

class BookDetailsView_Body extends StatelessWidget {
  const BookDetailsView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            //start the body under safe area "appBar"
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Custom_Book_Details_App_bar(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Book_Details_Section(),
                ),
                Expanded(
                  child: SizedBox(height: 32),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Can_Also_Like_Sectoin(),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
