
import 'package:flutter/material.dart';

import '../common/widgets/error_widget.dart';
import '../features/auth/presentation/log_in_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LogInScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const  LogInScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}