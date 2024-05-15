import 'package:bookly/Features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/view/widgets/books_actions.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_book_detailes_app_bar.dart';import 'package:bookly/constance.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            CustomBookDetailesAppBar(),
            BookeDetailsSections(),
            SizedBox(
              height: 37
            ),
            BooksActions()
          ],
        ),
      ),
    );
  }
}



