import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/models/trip_model.dart';
import 'package:travel_app/representation/screens/detail_screen.dart';

class MiniCardWidget extends StatelessWidget {
  const MiniCardWidget({Key? key, required this.tripModel}) : super(key: key);

  final TripModel tripModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailScreen.routeName, arguments: tripModel);
      },
      child: Container(
        width: 335,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0xffb4bcc9).withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                '${tripModel.img}',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              height: 72,
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/calendar.svg",
                        width: 16,
                        height: 16,
                        color: ColorPalette.textColor2,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "26 January 2022",
                        style: TextStyles.defaultStyle
                            .setColor(ColorPalette.textColor2)
                            .setTextSize(13),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "${tripModel.name}",
                    style: TextStyles.defaultStyle.medium.setTextSize(16),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        width: 16,
                        height: 16,
                        color: ColorPalette.textColor2,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "${tripModel.address}",
                        style: TextStyles.defaultStyle
                            .setTextSize(13)
                            .setColor(ColorPalette.textColor2),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              "assets/icons/arrow-right.svg",
              color: ColorPalette.textColor2,
            )
          ],
        ),
      ),
    );
  }
}
