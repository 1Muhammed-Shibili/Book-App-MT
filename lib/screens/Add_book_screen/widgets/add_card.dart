import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Color(0xFF43B888),
      strokeWidth: 1,
      dashPattern: [8, 6],
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      child: Container(
        width: 350,
        height: 218,
        decoration: BoxDecoration(
            color: Color(0XFFF6F6F7),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Add.png',
              width: 41,
              height: 40,
            ),
            Text(
              'Upload cover',
              style: GoogleFonts.geologica(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF43B888),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
