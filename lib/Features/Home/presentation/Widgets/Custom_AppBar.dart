import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Row(
        children: [
          SvgPicture.asset(
            kLogo,
            height: 23,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(kSearch_view);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
