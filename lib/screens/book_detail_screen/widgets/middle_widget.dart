import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Questions',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0XFF777779),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  '20',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0XFF35312D),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0XFFE4E4EB),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Answered-Questions',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0XFF777779),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  '17',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0XFF35312D),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0XFFE4E4EB),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Unanswered-Questions',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0XFF777779),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  '3',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0XFF35312D),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0XFFE4E4EB),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: WidgetStateProperty.all(EdgeInsets.zero),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(Color(0xFF43B888)),
            ),
            child: Container(
              width: 350,
              height: 47,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.file_download_outlined,
                      size: 20, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    "Download PDF",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Discription',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Color(0XFF35312D),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem psum has been the industry's standard dummy text ever since the 1500s",
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFF777779),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Questions',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Color(0XFF35312D),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
