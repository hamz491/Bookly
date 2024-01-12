import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Book_Details_Card.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Price_Card.dart';
import 'package:bookly/Features/Home/presentation/Widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation/Widgets/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetailsView_Body extends StatelessWidget {
  const BookDetailsView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Custom_Book_Details_App_bar(),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Book_Details_Book_Card(),
            ),
            const SizedBox(height: 43),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(height: 4),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 14),
            const BookRating(),
            const Padding(
              padding: EdgeInsets.only(top: 37),
              child: priceCard(),
            ),
          ],
        ),
      ),
    );
  }
}

