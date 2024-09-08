import 'package:coffee_house_1/screens/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.sourceSans3TextTheme(const TextTheme(
              titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              bodySmall:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w600)))),
      home: const DashBoardpage(),
    );
  }
}
