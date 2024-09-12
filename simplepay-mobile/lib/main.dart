import 'package:flutter/material.dart';
import 'package:flutter_flex/pages/login.dart';
import 'package:flutter_flex/pages/otp.dart';
import 'package:flutter_flex/pages/welcomeAnimated.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: WelcomeAnimated(),
      initialRoute: "/welcome-animated",
      routes: {
        "/welcome-animated": (context) => WelcomeAnimated(),
        "/login": (context) => Login(),
        "/wa-otp": (context) => Otp(),
      },
    );
  }
}
