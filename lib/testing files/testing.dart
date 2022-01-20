import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'testing2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icons.home,
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.blue
        )
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}


