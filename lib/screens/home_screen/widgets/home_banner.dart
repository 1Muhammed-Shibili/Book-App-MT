import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scrollable_menu.dart';
import 'custom_menu_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(),
        const CustomMenuButton(),
        _buildDailyInspirationLabel(),
        _buildTitle(),
        const ScrollableMenu(),
      ],
    );
  }

  Widget _buildBackground() {
    return Container(
      width: 592,
      height: 393,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/image 2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildDailyInspirationLabel() {
    return Positioned(
      top: 124,
      left: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF43B888).withOpacity(0.8),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              "Daily Inspiration",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Positioned(
      top: 162,
      left: 22,
      child: Text(
        "Spending Time with Family",
        style: GoogleFonts.plusJakartaSans(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
