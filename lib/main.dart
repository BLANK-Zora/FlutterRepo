import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_page.dart';
import 'package:flutter_application_2/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/" : (context) => const LoginPage(),
        "/login": (context) => const HomePage(),
      },
    );
  }
}
