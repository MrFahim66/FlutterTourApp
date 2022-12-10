import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/widgets/app_large_text.dart';
import 'package:travelapp/widgets/app_text.dart';
import 'package:travelapp/widgets/responsive_button.dart';

import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome1.jpg",
    "welcome2.jpg",
    "welcome3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLargeText(text: "Trips"),
                            AppText(
                              text: "Mountain",
                              size: 30,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,
                              child: AppText(
                                text:
                                    "Mountain Hikes give you an incedible sense of freedom along with endurance.",
                                color: AppColors.textColor2,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            ResponsiveButton(
                              width: 120,
                            )
                          ],
                        ),
                        Column(
                            children: List.generate(
                          3,
                          (indexDots) {
                            return Container(
                                margin: const EdgeInsets.only(bottom: 3),
                                width: 8,
                                height: index == indexDots ? 25 : 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: index == indexDots
                                        ? AppColors.mainColor
                                        : AppColors.mainColor
                                            .withOpacity(0.4)));
                          },
                        ))
                      ]),
                ),
              );
            }));
  }
}
