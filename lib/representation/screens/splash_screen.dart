import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/representation/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectLoginScreen();
  }

  void redirectLoginScreen() async {
    await Future.delayed((Duration(seconds: 2)));
    Navigator.of(context).pushNamed(LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: Center(
          child: Text(
            'Travenor',
            style: TextStyles.defaultStyle.bold.whiteTextColor.setTextSize(34),
          ),
        ),
      ),
    );
  }
}
