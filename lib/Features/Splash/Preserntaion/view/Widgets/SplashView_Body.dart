import 'package:bookly/Core/utils/Assets.dart';
import 'package:bookly/Features/Home/presentation/View/HomeView.dart';
import 'package:bookly/Features/Splash/Preserntaion/view/Widgets/SlidingText.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashView_Body extends StatefulWidget {
  const SplashView_Body({super.key});

  @override
  State<SplashView_Body> createState() => _SplashView_BodyState();
}

class _SplashView_BodyState extends State<SplashView_Body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigateToHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(-.6, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void NavigateToHomeView() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(
          () => const HomeView(),
          transition: Transition.fade,
          duration: kTransitionDuration,
        );
      },
    );
  }
}
