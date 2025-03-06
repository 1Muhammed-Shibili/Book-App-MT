import 'package:book_app/screens/home_screen/widgets/custom_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskBar extends StatelessWidget {
  final String title;

  const TaskBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
                color: const Color(0xFF43B888),
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          title,
          style: GoogleFonts.plusJakartaSans(
              color: const Color(0XFF35312D),
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CustomMenuButton(),
        )
      ],
    );
  }
}
