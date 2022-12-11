import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';

class NotificationBtnWidget extends StatelessWidget {
  const NotificationBtnWidget({Key? key, this.onTap}) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ColorPalette.backgroundColor,
      ),
      child: SvgPicture.asset("assets/icons/bell.svg"),
    );
  }
}
