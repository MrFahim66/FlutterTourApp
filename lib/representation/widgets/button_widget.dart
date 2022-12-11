import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';

import '../../core/constants/textstyle_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, this.onTap})
      : super(key: key);

  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorPalette.primaryColor),
        child: Text(
          title,
          style: TextStyles.defaultStyle.medium.setTextSize(17).whiteTextColor,
        ),
      ),
    );
  }
}
