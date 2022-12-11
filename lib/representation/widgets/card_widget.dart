import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/models/trip_model.dart';
import 'package:travel_app/representation/screens/detail_screen.dart';
import 'package:travel_app/representation/widgets/bookmark_widget.dart';

import '../../core/constants/textstyle_constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.tripModel}) : super(key: key);

  final TripModel tripModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailScreen.routeName, arguments: tripModel);
      },
      child: Container(
        height: 384,
        width: 268,
        padding: EdgeInsets.fromLTRB(14, 14, 14, 16),
        margin: EdgeInsets.only(top: 12, bottom: 12, right: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(1, 2), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  '${tripModel.img}',
                  width: 240,
                  height: 265,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(top: 14, right: 14, child: BookmarkWidget(size: "sm")),
            ],
          ),
          SizedBox(height: 14),
          Row(
            children: [
              Text('${tripModel.name}',
                  style: TextStyles.defaultStyle.medium.setTextSize(18)),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/star.svg"),
                  SizedBox(
                    width: 4,
                  ),
                  Text("${tripModel.rate}",
                      style: TextStyles.defaultStyle.setTextSize(15))
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset("assets/icons/location.svg"),
              SizedBox(
                width: 4,
              ),
              Text("${tripModel.address}",
                  style: TextStyles.defaultStyle
                      .setTextSize(15)
                      .setColor(ColorPalette.textColor2))
            ],
          ),
        ]),
      ),
    );
  }
}
