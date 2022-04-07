import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:reservas/constants.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: HexColor(primaryRed),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset(
            'assets/icons/facebook.svg',
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: HexColor(primaryRed),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset(
            'assets/icons/google-plus.svg',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}