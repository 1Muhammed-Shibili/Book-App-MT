import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 47,
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: GoogleFonts.plusJakartaSans(
              color: Color(0x9C292A2C),
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
