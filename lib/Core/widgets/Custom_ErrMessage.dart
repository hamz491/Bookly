import 'package:bookly/Core/utils/Styles.dart';
import 'package:flutter/material.dart';

class ErrMessage extends StatelessWidget {
  const ErrMessage({super.key, required this.ErrorMessage});
  final String ErrorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ErrorMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
