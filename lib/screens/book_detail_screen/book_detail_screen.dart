import 'package:book_app/components/task_bar.dart';
import 'package:book_app/screens/book_detail_screen/widgets/image_widget.dart';
import 'package:book_app/screens/book_detail_screen/widgets/middle_widget.dart';
import 'package:book_app/screens/book_detail_screen/widgets/question_card.dart';
import 'package:book_app/screens/book_detail_screen/widgets/top_widget.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TaskBar(title: "Book Details"),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ImageWidget(),
                  SizedBox(height: 20),
                  TopWidget(),
                  SizedBox(height: 10),
                  Divider(
                    height: 20,
                    thickness: 1,
                    color: Color(0XFFE2E4F2),
                  ),
                  MiddleWidget(),
                  SizedBox(height: 20),
                  QuestionCard(),
                  SizedBox(height: 15),
                  QuestionCard(),
                  SizedBox(height: 15),
                  QuestionCard(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
