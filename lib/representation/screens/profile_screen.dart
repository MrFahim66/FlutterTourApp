import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/representation/widgets/back_button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButtonWidget(mode: "dark"),
                      Container(
                        child: Center(
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(27, 30, 40, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black.withOpacity(0.035),
                        ),
                        child: SvgPicture.asset("assets/icons/pencil.svg"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/lg-avatar.png',
                              ),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Fahim Ur Rahman',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(27, 30, 40, 1),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'fahim@gmail.com',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(125, 132, 141, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 46,
                      ),
                      Container(
                        width: 335,
                        height: 78,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text('Reward Points',
                                      style: TextStyles.defaultStyle.semibold
                                          .setTextSize(15)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '360',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      color: Color.fromRGBO(13, 110, 253, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              Color.fromRGBO(247, 247, 249, 1),
                                          width: 1))),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Travel Trips',
                                    style: TextStyles.defaultStyle.semibold
                                        .setTextSize(15),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '238',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      color: Color.fromRGBO(13, 110, 253, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              Color.fromRGBO(247, 247, 249, 1),
                                          width: 1))),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Bucket List',
                                    style: TextStyles.defaultStyle.semibold
                                        .setTextSize(15),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '473',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      color: Color.fromRGBO(13, 110, 253, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 344,
                              child: ListView(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/icons/user.png'),
                                                width: 24,
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Text(
                                                'Profile',
                                                style: TextStyles
                                                    .defaultStyle.medium
                                                    .setTextSize(16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 14,
                                          color: Color.fromRGBO(27, 30, 40, 1),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromRGBO(
                                                    247, 247, 249, 1),
                                                width: 1))),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    height: 40,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/icons/save.png'),
                                                width: 24,
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Text(
                                                'Bookmarked',
                                                style: TextStyles
                                                    .defaultStyle.medium
                                                    .setTextSize(16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 14,
                                          color: Color.fromRGBO(27, 30, 40, 1),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromRGBO(
                                                    247, 247, 249, 1),
                                                width: 1))),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    height: 40,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/icons/travel.png'),
                                                width: 24,
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Text('Previous Trips',
                                                  style: TextStyles
                                                      .defaultStyle.medium
                                                      .setTextSize(16))
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 14,
                                          color: Color.fromRGBO(27, 30, 40, 1),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromRGBO(
                                                    247, 247, 249, 1),
                                                width: 1))),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    height: 40,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/icons/setting.png'),
                                                width: 24,
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Text('Settings',
                                                  style: TextStyles
                                                      .defaultStyle.medium
                                                      .setTextSize(16))
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 14,
                                          color: Color.fromRGBO(27, 30, 40, 1),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromRGBO(
                                                    247, 247, 249, 1),
                                                width: 1))),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    height: 40,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/icons/version.png'),
                                                width: 24,
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Text(
                                                'Version',
                                                style: TextStyles
                                                    .defaultStyle.medium
                                                    .setTextSize(16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 14,
                                          color: Color.fromRGBO(27, 30, 40, 1),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromRGBO(
                                                    247, 247, 249, 1),
                                                width: 1))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
