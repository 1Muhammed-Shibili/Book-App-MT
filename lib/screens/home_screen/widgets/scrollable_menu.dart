import 'dart:ui';
import 'package:book_app/screens/book_screen/book_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollableMenu extends StatelessWidget {
  const ScrollableMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 220,
      left: 20,
      child: SizedBox(
        height: 86,
        width: 385,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildMenuItem("assets/images/faq.png", "Questions"),
              _buildMenuItem("assets/images/Puzzle Business.png", "Challenges"),
              GestureDetector(
                child: _buildMenuItem(
                  "assets/images/Books.png",
                  "Books",
                ),
                onTap: () => Get.to(() => BookScreen()),
              ),
              _buildMenuItem("assets/images/Files.png", "Assets"),
              _buildMenuItem("assets/images/Group 21418.png", "Community"),
              _buildMenuItem("assets/images/Vector.png", "Family"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String iconPath, String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: 101,
            height: 86,
            decoration: BoxDecoration(
              color: const Color(0x33FFFFFF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(iconPath, height: 22, width: 22),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
