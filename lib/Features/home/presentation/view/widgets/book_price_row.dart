import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class BookPriceRow extends StatelessWidget {
  const BookPriceRow({super.key,required this.bookRating, required this.ratingsCount});
  final int? bookRating;
final int? ratingsCount;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text(
          'Free ',
          style: TextStyles.textStyle20,
        ),
        const Spacer(),
        BookRating(bookRating: bookRating!, ratingsCount: ratingsCount!,)
      ],
    );
  }
}
