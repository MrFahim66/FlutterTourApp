import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key, required this.mode, this.onTap})
      : super(key: key);

  final String mode;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black.withOpacity(0.035),
          ),
          child: mode == "dark"
              ? SvgPicture.asset("assets/icons/arrow-left.svg")
              : SvgPicture.asset(
                  "assets/icons/arrow-left.svg",
                  color: Colors.white,
                )),
    );
  }
}
