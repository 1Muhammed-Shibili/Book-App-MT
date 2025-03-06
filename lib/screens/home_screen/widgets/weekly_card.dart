import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const WeeklyCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152,
      height: 135,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              imagePath,
              width: 152,
              height: 81,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0XFF292A2C),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                subtitle,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color(0XFF777779),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
