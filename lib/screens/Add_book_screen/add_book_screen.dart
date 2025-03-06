import 'package:book_app/screens/Add_book_screen/widgets/add_card.dart';
import 'package:book_app/screens/Add_book_screen/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBookScreen extends StatelessWidget {
  const AddBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: 60, bottom: 25),
        child: Column(
          children: [
            Row(
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
                  'Create a Book',
                  style: GoogleFonts.plusJakartaSans(
                      color: const Color(0XFF35312D),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 40),
            LinearProgressIndicator(
              minHeight: 13,
              value: 0.25,
              backgroundColor: Color(0XFFF8F9FA),
              color: Color(0xFF43B888),
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            SizedBox(height: 40),
            AddCard(),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Book title'),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Dedication or name of person'),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Volume Number'),
            SizedBox(height: 100),
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
                    Text(
                      "Add Book",
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
          ],
        ),
      ),
    );
  }
}
