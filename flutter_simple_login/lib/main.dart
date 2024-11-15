import 'package:flutter/material.dart';
import 'package:flutter_simple_login/pages/login_page.dart';
import 'package:flutter_simple_login/pages/welcome_page.dart';
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
      title: 'Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 140, 241, 190),
        scaffoldBackgroundColor: const Color(
          0xfff6f6f6,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(
            0xfff6f6f6,
          ),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => const WelcomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
