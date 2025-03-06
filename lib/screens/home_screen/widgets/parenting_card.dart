import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildCard(),
        SizedBox(width: 15),
        buildCard(),
      ],
    );
  }

  Widget buildCard() {
    return Container(
      height: 272,
      width: 219,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0XFFE4E4EB), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  "assets/images/img1.png",
                  height: 131,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Parenting Inspiration",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF292A2C),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Question for every parent needing help...",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF292A2C),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset('assets/images/like.png',
                            height: 18, width: 20),
                        SizedBox(width: 7),
                        Text(
                          "Likes",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF292A2C),
                          ),
                        ),
                        SizedBox(width: 20),
                        Image.asset('assets/images/Group.png',
                            height: 18, width: 20),
                        SizedBox(width: 7),
                        Text(
                          "Shares",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF292A2C),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 19,
            top: 109,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.asset(
                'assets/images/img7.jpeg',
                height: 43,
                width: 43,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
