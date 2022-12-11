import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/models/trip_model.dart';
import 'package:travel_app/network/networkRequest.dart';
import 'package:travel_app/representation/widgets/back_button_widget.dart';
import 'package:travel_app/representation/widgets/mini_card_widget.dart';
import 'package:travel_app/representation/widgets/notification_button_widget.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<TripModel> tripModel = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchTrips().then((dataFromServer) {
      setState(() {
        tripModel = dataFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BackButtonWidget(
              mode: "dark",
            ),
            Spacer(),
            Text(
              "Schedule",
              textAlign: TextAlign.center,
              style: TextStyles.defaultStyle.semibold.setTextSize(18),
            ),
            Spacer(),
            NotificationBtnWidget()
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
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
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "22 October",
                    style: TextStyles.defaultStyle.semibold.setTextSize(20),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "assets/icons/arrow-left.svg",
                    color: ColorPalette.textColor1,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset("assets/icons/arrow-right.svg")
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 12, 12),
                    child: Column(
                      children: [
                        Text(
                          "S",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.textColor2),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("18",
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(15))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "M",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.textColor2),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("19",
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(15))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "T",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.textColor2),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("20",
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(15))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "W",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.textColor2),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("21",
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(15))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorPalette.primaryColor),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "T",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .whiteTextColor,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("22",
                            style: TextStyles
                                .defaultStyle.semibold.whiteTextColor
                                .setTextSize(15))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "F",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.textColor2),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("23",
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(15))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.fromLTRB(12, 12, 0, 12),
                    child: Column(
                      children: [
                        Text(
                          "S",
                          style: TextStyles.defaultStyle
                              .setTextSize(15)
                              .setColor(ColorPalette.textColor2),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text("24",
                            style: TextStyles.defaultStyle.semibold
                                .setTextSize(15))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Text(
              "My Schedule",
              style: TextStyles.defaultStyle.semibold.setTextSize(20),
            )
          ],
        ),
        SizedBox(height: 16),
        tripModel.isEmpty
            ? (Container())
            : (SingleChildScrollView(
                child: Column(
                  children: [
                    MiniCardWidget(
                      tripModel: tripModel[0],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    MiniCardWidget(
                      tripModel: tripModel[1],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    MiniCardWidget(
                      tripModel: tripModel[6],
                    ),
                  ],
                ),
              ))
      ]),
    );
  }
}
