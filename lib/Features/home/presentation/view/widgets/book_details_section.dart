import 'package:bookly/Features/home/presentation/view/widgets/book_detailes_image.dart';
import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class BookeDetailsSections extends StatelessWidget {
  const BookeDetailsSections({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: const BookDetailesImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Harry Potter ",
          style: TextStyles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'j.k. rowling',
            style: TextStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating()
      ],
    );
  }
}
