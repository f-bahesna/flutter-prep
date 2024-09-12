import 'package:flutter/material.dart';
import 'package:flutter_flex/pages/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class WelcomeAnimated extends StatelessWidget {
  const WelcomeAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(232, 14, 61, 156), // #003399 with 25% opacity
              Color.fromARGB(255, 10, 43, 110), // #597ABD with 100% opacity
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/simplepay_splash_screen_image.png',
                ),
              ),
            ],
          ),
        ),
      ),
      nextScreen: const Login(),
      splashIconSize: 1000,
      duration: 2500,
    );
  }
}
