import 'package:bookly/Features/Home/presentation/Widgets/Book_Details_Card.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Book_Details_View_Body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsView_Body(),
    );
  }
}
