import 'package:book_app/components/bottom_nav_bar.dart';
import 'package:book_app/controllers/nav_controller.dart';
import 'package:book_app/screens/home_screen/widgets/book_card.dart';
import 'package:book_app/screens/home_screen/widgets/category_card.dart';
import 'package:book_app/screens/home_screen/widgets/grid_card.dart.dart';
import 'package:book_app/screens/home_screen/widgets/home_banner.dart';
import 'package:book_app/screens/home_screen/widgets/parenting_card.dart';
import 'package:book_app/screens/home_screen/widgets/weekly_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final NavController navController = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            HomeBanner(),
            Positioned(
              top: 325,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 325,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Image.asset('assets/images/“.png')),
                              Positioned(
                                top: 10,
                                left: 23,
                                child: Text(
                                  'WILLIAM JAMES',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color(0XFF292A2C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "“The greatest purpose of life is to live it for something that last longer than you”",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ibmPlexSans(
                            //change the font family to 'IBM Plex Serif'
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0XFF292A2C),
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 30),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BookCard(
                                imagePath: 'assets/images/book1.png',
                                title: 'Create a book',
                                description:
                                    'Make a book with your favourite legacy questions or create your own',
                              ),
                              SizedBox(width: 15),
                              BookCard(
                                imagePath: 'assets/images/book2.png',
                                title: 'View all books',
                                description:
                                    'Check out all the family members you have added',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Questions by topic",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0XFF292A2C),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            CategoryCard(
                              imagePath: "assets/images/img2.png",
                              title: "Parenting",
                              subtitle: "30 Questions",
                            ),
                            SizedBox(width: 30),
                            CategoryCard(
                              imagePath: "assets/images/img4.png",
                              title: "Vocational",
                              subtitle: "30 Questions",
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            CategoryCard(
                              imagePath: "assets/images/img6.png",
                              title: "Educational",
                              subtitle: "30 Questions",
                            ),
                            SizedBox(width: 30),
                            CategoryCard(
                              imagePath: "assets/images/img2.png",
                              title: "Parenting",
                              subtitle: "30 Questions",
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Most Popular Questions",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0XFF292A2C),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GridCard(
                                imagePath: 'assets/images/img1.png',
                                title: "Parenting",
                                subtitle: "30 Questions",
                              ),
                              SizedBox(width: 15),
                              GridCard(
                                imagePath: 'assets/images/img3.png',
                                title: "Vocational",
                                subtitle: "30 Questions",
                              ),
                              SizedBox(width: 15),
                              GridCard(
                                imagePath: 'assets/images/img5.png',
                                title: "Educational",
                                subtitle: "30 Questions",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Get inspired by others",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0XFF292A2C),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ParentingCard(),
                              SizedBox(width: 15),
                              ParentingCard()
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Weekly Legacy Challenges",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0XFF292A2C),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              WeeklyCard(
                                imagePath: "assets/images/img1.png",
                                title: "Family Exploration",
                                subtitle: "Ask three family members",
                              ),
                              SizedBox(width: 15),
                              WeeklyCard(
                                imagePath: "assets/images/img1.png",
                                title: "Mission Statement",
                                subtitle: "Create your own",
                              ),
                              SizedBox(width: 15),
                              WeeklyCard(
                                imagePath: "assets/images/img1.png",
                                title: "Education",
                                subtitle: "10 Questions",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
