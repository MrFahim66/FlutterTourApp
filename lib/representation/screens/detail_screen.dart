import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/models/trip_model.dart';
import 'package:travel_app/representation/screens/main_app.dart';
import 'package:travel_app/representation/widgets/bookmark_widget.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';

import '../widgets/back_button_widget.dart';

class DetailScreen extends StatefulWidget {
  static const String routeName = '/detail_screen';
  const DetailScreen({
    Key? key,
    required this.tripModel,
  }) : super(key: key);

  final TripModel tripModel;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
            height: 480,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("${widget.tripModel.img}"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
                alignment: Alignment.topCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BackButtonWidget(
                      mode: "white",
                      onTap: () {
                        Navigator.of(context).pushNamed(MainApp.routeName);
                      },
                    ),
                    Spacer(),
                    Container(
                      // alignment: Alignment.center,
                      child: Text(
                        "Details",
                        textAlign: TextAlign.center,
                        style: TextStyles.defaultStyle.whiteTextColor.semibold
                            .setTextSize(18),
                      ),
                    ),
                    Spacer(),
                    BookmarkWidget(
                      size: "lg",
                    )
                  ],
                )),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              margin: EdgeInsets.only(top: 340),
              height: 455,
              width: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg-detail.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Image.asset('assets/images/rectangle.png'),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.tripModel.name}',
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(24),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text("${widget.tripModel.address}",
                              style: TextStyles.defaultStyle
                                  .setTextSize(15)
                                  .setColor(ColorPalette.textColor2))
                        ],
                      ),
                      Spacer(),
                      Image.asset("assets/images/author.png")
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/location.svg"),
                        SizedBox(
                          width: 3,
                        ),
                        Text("${widget.tripModel.address}",
                            style: TextStyles.defaultStyle
                                .setTextSize(15)
                                .setColor(ColorPalette.textColor2))
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/star.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        Text("${widget.tripModel.rate}",
                            style: TextStyles.defaultStyle.setTextSize(15)),
                        SizedBox(
                          width: 1,
                        ),
                        Text("(2498)",
                            style: TextStyles.defaultStyle
                                .setTextSize(15)
                                .setColor(ColorPalette.textColor2))
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "\$${widget.tripModel.price}/",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.primaryColor),
                        ),
                        Text("Person",
                            style: TextStyles.defaultStyle
                                .setTextSize(15)
                                .setColor(ColorPalette.textColor2))
                      ],
                    )
                  ]),
                  SizedBox(height: 36),
                  Row(children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About Destination",
                                style: TextStyles.defaultStyle.semibold
                                    .setTextSize(20)),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 325,
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text:
                                          'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... ',
                                      style: TextStyles.defaultStyle.fontCaption
                                          .setColor(ColorPalette.textColor2),
                                    ),
                                    TextSpan(
                                        text: "Read More",
                                        style: TextStyles
                                            .defaultStyle.fontCaption.medium
                                            .setColor(ColorPalette.orangeColor))
                                  ]),
                                ))
                          ]),
                    )
                  ]),
                  Spacer(),
                  ButtonWidget(title: "Book Now")
                ],
              )),
        ],
      ),
    );
  }
}
