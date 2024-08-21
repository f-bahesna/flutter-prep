import 'package:flutter/material.dart';
import 'package:flutter_get_x/pages/home_page.dart';
import 'package:flutter_get_x/utils.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await registerServices();
  await registerControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Get X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      routes: {
        "/home": (context) => HomePage(),
      },
      initialRoute: "/home",
    );
  }
}
