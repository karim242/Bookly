import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/view/widgets/books_actions.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModels});
final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(slivers: [
      SliverFillRemaining(
          child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Column(
          children: [
          const  CustomBookDetailesAppBar(),
            BookeDetailsSections(book: bookModels,),
          const  SizedBox(height: 20),
           const BooksActions(),
           const Expanded(
              child: SizedBox(
                height: 30,
              ),
            ),
           const SimilarBooksSection(),
          const  SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    ]);
  }
}
