import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groscery_app/screens/login_page.dart';
import 'package:groscery_app/screens/welcome_page.dart';

import 'screens/signup_page.dart';

void main() {
  runApp(const Groscery());
}

class Groscery extends StatelessWidget {
  const Groscery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Groscery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey.shade800),
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUp(),
      },
      initialRoute: '/welcome',
    );
  }
}
