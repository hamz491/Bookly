import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Book_Details_Card.dart';
import 'package:bookly/Features/Home/presentation/Widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'Price_Card.dart';

class Book_Details_Section extends StatelessWidget {
  const Book_Details_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Book_Details_Book_Card(),
        const SizedBox(height: 33),
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
    );
  }
}