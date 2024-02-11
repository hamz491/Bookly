import 'package:flutter/material.dart';

class Loading_Indicator extends StatelessWidget {
  const Loading_Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
