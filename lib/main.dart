import 'dart:io';

import 'package:fitness_app/screens/age_screen.dart';
import 'package:fitness_app/screens/goal_screen.dart';
import 'package:fitness_app/screens/height_screen.dart';
import 'package:fitness_app/screens/level.dart';
import 'package:fitness_app/screens/weight_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'screens/onbording_screen.dart';
import 'screens/gender_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      if (kReleaseMode) exit(1);
    };
    return MaterialApp(
      color: Colors.black,
      routes: {
        "/onboarding": (context) => OnboardingScreen(),
        "/gender": (context) => const GenderScreen(),
        "/age": (context) => AgeScreen(),
        "/height": (context) => HeightScreen(),
        "/weight": (context) => WeightScreen(),
        "/goal": (context) => GoalScreen(),
        "/level": (context) => LevelScreen(),
      },

      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
