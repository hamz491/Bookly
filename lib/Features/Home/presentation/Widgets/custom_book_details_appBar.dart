import 'package:flutter/material.dart';

class Custom_Book_Details_App_bar extends StatelessWidget {
  const Custom_Book_Details_App_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.white,
            size: 32,
          ),
        ),
        const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
          size: 28,
        ),
      ],
    );
  }
}
