
import 'package:flutter/material.dart';
import 'package:whats_up/features/auth/presentation/otp_screen.dart';

import '../common/widgets/error_widget.dart';
import '../features/auth/presentation/log_in_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LogInScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const  LogInScreen(),
      );
    case OtpScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) =>   OtpScreen(
          verificationId: verificationId,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}