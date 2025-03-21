import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/view/pages/home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,

      ),
      debugShowCheckedModeBanner: false,
      home: JobFinderHome(),
    );
  }
}

