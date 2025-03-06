import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 350,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: Color(0XFF43B888),
            width: 1,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image.asset(
                  'assets/images/img7.jpeg',
                  height: 22,
                  width: 22,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'Tabish Bin Tahir',
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0XFF0E0D1E)),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Question 1 / Topic',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0x9C777779)),
          ),
          SizedBox(height: 7),
          Text(
            'How would you describe our family’s humour as if to a stranger?',
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0XFF35312D),
            ),
          ),
          SizedBox(height: 9),
          Row(
            children: [
              Container(
                width: 100,
                height: 31,
                decoration: BoxDecoration(
                    color: Color(0XFF43B888),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Answes [0]",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 80.17,
                height: 31,
                decoration: BoxDecoration(
                    color: Color(0XFFF6F6F7),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group.png',
                      height: 11,
                      width: 11,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Share",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF43B989),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
