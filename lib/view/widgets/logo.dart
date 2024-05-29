import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobFinderLogo extends StatelessWidget {
  const JobFinderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: const Color(0XFF0a6cf5),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(
        child: Text('J',style: GoogleFonts.kalam(
          fontSize:16,
          color: Colors.white,
          fontWeight:FontWeight.bold,
        ),),
      ),
    );
  }
}
