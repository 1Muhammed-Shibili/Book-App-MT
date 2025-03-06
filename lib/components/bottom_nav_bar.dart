import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/nav_controller.dart';

class CustomNavBar extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<String> navIcons = [
    "assets/images/home 1 (Traced).png",
    "assets/images/Questions.png",
    "assets/images/community.png",
    "assets/images/purchase.png",
    "assets/images/me.png",
  ];

  final List<String> navTitles = [
    "Home",
    "Questions",
    "Community",
    "Purchases",
    "Me",
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(top: BorderSide(color: Colors.grey.shade300, width: 1)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(navIcons.length, (index) {
              bool isSelected = navController.selectedIndex.value == index;
              return GestureDetector(
                onTap: () => navController.changeIndex(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      navIcons[index],
                      height: 28,
                      width: 28,
                      color: isSelected ? Color(0XFF43B888) : Colors.grey,
                    ),
                    SizedBox(height: 4), // Space between icon and text
                    Text(
                      navTitles[index],
                      style: GoogleFonts.gideonRoman(
                        //change to geomanist
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: isSelected ? Colors.black : Color(0XFF777779),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
