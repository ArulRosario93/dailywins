import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        // Progress indicator
        LinearProgressIndicator(
          value: 0.5,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),

        Padding(padding: EdgeInsets.only(top: 20)),

        Text("Good Morning", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),) ),
        Text("Ready to track your day?", style:GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      ],
    );
  }
}