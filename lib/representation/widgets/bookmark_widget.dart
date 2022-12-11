import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookmarkWidget extends StatelessWidget {
  const BookmarkWidget({Key? key, required this.size, this.onTap})
      : super(key: key);

  final String size;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(size == "sm" ? 10 : 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black.withOpacity(0.035),
        ),
        child: Container(
          width: size == "sm" ? 17 : 20,
          height: size == "sm" ? 17 : 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(
            "assets/icons/bookmark.svg",
          ),
        ));
  }
}
