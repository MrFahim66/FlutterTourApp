import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/representation/widgets/back_button_widget.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(mode: "dark"),
              Text(
                "Messages",
                style: TextStyles.defaultStyle.semibold.setTextSize(18),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorPalette.backgroundColor,
                ),
                child: SvgPicture.asset("assets/icons/menu.svg"),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Messages",
                  style: TextStyles.defaultStyle.semibold.setTextSize(20)),
              SvgPicture.asset("assets/icons/edit.svg")
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(125, 132, 141, 1),
                    letterSpacing: 0.3),
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: EdgeInsets.only(left: 15, right: 10),
                    child: SvgPicture.asset("assets/icons/search-ic.svg"),
                  ),
                  hintText: "Search for chats & messages",
                  border: InputBorder.none,
                ),
              )),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/avatar-ms.png",
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tanvir Ahmed",
                    style: TextStyles.defaultStyle.medium.setTextSize(18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Hi, Tanvir! 👋 How are you doing?",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(14))
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/check.svg"),
                  SizedBox(
                    width: 6,
                  ),
                  Text("09:46",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(12))
                ],
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/avatar-ms.png",
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mehedi Hasan",
                    style: TextStyles.defaultStyle.medium.setTextSize(18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Hi, Mehedi! 👋 How are you doing?",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(14))
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/check.svg"),
                  SizedBox(
                    width: 6,
                  ),
                  Text("09:46",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(12))
                ],
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/avatar-ms.png",
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Anik Ahmed",
                    style: TextStyles.defaultStyle.medium.setTextSize(18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Hi, Anik! 👋 How are you doing?",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(14))
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/check.svg"),
                  SizedBox(
                    width: 6,
                  ),
                  Text("09:46",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(12))
                ],
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/avatar-ms.png",
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Imran Ahmed",
                    style: TextStyles.defaultStyle.medium.setTextSize(18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Hi, Imran! 👋 How are you doing?",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(14))
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/check.svg"),
                  SizedBox(
                    width: 6,
                  ),
                  Text("09:46",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(12))
                ],
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/avatar-ms.png",
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nahian Nabil",
                    style: TextStyles.defaultStyle.medium.setTextSize(18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Hi, Nahian! 👋 How are you doing?",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(14))
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/check.svg"),
                  SizedBox(
                    width: 6,
                  ),
                  Text("09:46",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(12))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
