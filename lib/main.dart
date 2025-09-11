import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whats_up/features/landing/presentation/landing_screen.dart';
import 'common/utils/colors.dart';
import 'core/firebase_options.dart';
import 'core/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats UP',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(color: appBarColor),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      //home: MobileLayoutScreen(),
      home: LandingScreen(),
    );
  }
}
