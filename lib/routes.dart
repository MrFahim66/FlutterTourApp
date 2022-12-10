import 'package:flutter/material.dart';
import 'package:travel_app/models/trip_model.dart';
import 'package:travel_app/representation/screens/destination_screen.dart';
import 'package:travel_app/representation/screens/detail_screen.dart';
import 'package:travel_app/representation/screens/forgot_password_screen.dart';
import 'package:travel_app/representation/screens/login_screen.dart';
import 'package:travel_app/representation/screens/main_app.dart';
import 'package:travel_app/representation/screens/signup_screen.dart';
import 'package:travel_app/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  MainApp.routeName: (context) => const MainApp(),
  DestinationScreen.routeName: (context) => const DestinationScreen(),
};

// ignore: body_might_complete_normally_nullable
MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // ignore: no_duplicate_case_values
    case DetailScreen.routeName:
      final TripModel tripModel = (settings.arguments as TripModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DetailScreen(
          tripModel: tripModel,
        ),
      );
  }
}
