import 'package:bookly/Core/utils/Assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView_Body extends StatelessWidget {
  const SplashView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AssetsData.Logo,
        width: 50,
        height: 50,
      ),
    );
  }
}
