import 'package:book_app/screens/Add_book_screen/add_book_screen.dart';
import 'package:book_app/screens/book_detail_screen/book_detail_screen.dart';
import 'package:book_app/screens/book_screen/widget/book_item.dart';
import 'package:book_app/components/task_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 60, bottom: 25),
            child: Column(
              children: [
                TaskBar(
                  title: 'Books',
                ),
                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            BookItem(
                              imagePath: 'assets/images/book3.png',
                              title: "Book Title",
                              author: "Tabish bin Tahir",
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () => Get.to(() => BookDetailScreen()),
                              child: BookItem(
                                imagePath: 'assets/images/book4.png',
                                title: "Book Title",
                                author: "Tabish bin Tahir",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            BookItem(
                              imagePath: 'assets/images/book4.png',
                              title: "Book Title",
                              author: "Tabish bin Tahir",
                            ),
                            SizedBox(width: 20),
                            BookItem(
                              imagePath: 'assets/images/book3.png',
                              title: "Book Title",
                              author: "Tabish bin Tahir",
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            BookItem(
                              imagePath: 'assets/images/book3.png',
                              title: "Book Title",
                              author: "Tabish bin Tahir",
                            ),
                            SizedBox(width: 20),
                            BookItem(
                              imagePath: 'assets/images/book4.png',
                              title: "Book Title",
                              author: "Tabish bin Tahir",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            right: 25,
            child: FloatingActionButton(
              onPressed: () {
                Get.to(() => AddBookScreen());
              },
              backgroundColor: Color(0xFF43B888),
              shape: CircleBorder(),
              child: Icon(Icons.add, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
