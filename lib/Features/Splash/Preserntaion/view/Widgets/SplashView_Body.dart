import 'package:bookly/Core/utils/Assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView_Body extends StatelessWidget {
  const SplashView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.Logo,
          width: 50,
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 100, top: 10),
          child: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
