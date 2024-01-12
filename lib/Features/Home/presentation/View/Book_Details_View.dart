import 'package:bookly/Features/Home/presentation/Widgets/Book_Details_Book_Card.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Custom_bookCard.dart';
import 'package:bookly/Features/Home/presentation/Widgets/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child: SafeArea(
          child: Column(
            children: [
              Custom_Book_Details_App_bar(),
              Book_Details_Book_Card(),
            ],
          ),
        ),
      ),
    );
  }
}
