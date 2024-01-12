import 'package:bookly/Core/utils/Styles.dart';
import 'package:flutter/material.dart';

class priceCard extends StatelessWidget {
  const priceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(15),
              ),
            ),
            height: 48,
            width: MediaQuery.of(context).size.width * .35,
            child: Center(
              child: Text(
                '19.99 €',
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(15),
              ),
            ),
            height: 48,
            width: MediaQuery.of(context).size.width * .35,
            child: Center(
                child: Text(
              'Free preview',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
