import 'package:bookly/Features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/view/widgets/books_actions.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:bookly/Features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
      child: Column(
        children: [
          const CustomBookDetailesAppBar(),
          const BookeDetailsSections(),
          const SizedBox(
            height: 37
          ),
          const BooksActions(),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also Like',
              style: TextStyles.textStyle14.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ), 
          ),
           const SizedBox(
            height: 16,
          ),
          const SimilarBooksListView()
        ],
      ),
    );
  }
}


