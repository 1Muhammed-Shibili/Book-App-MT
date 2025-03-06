import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;

  const BookItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  imagePath,
                  height: 210,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Image.asset(
                  'assets/images/fav.png',
                  height: 21,
                  width: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: Color(0XFF35312D),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  author,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    color: Color(0XFF777779),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
