import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class BookeDetailsSections extends StatelessWidget {
  const BookeDetailsSections({super.key, required this.book});
final BookModels book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .22,
          ),
          child:  FeatureItem(imageUrl: book.volumeInfo.imageLinks.thumbnail,),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          book.volumeInfo.title!,
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
            book.volumeInfo.authors![0],
            style: TextStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         BookRating(bookRating:book.volumeInfo.averageRating?? 0,
          ratingsCount:book.volumeInfo.ratingsCount?? 0,
          )
      ],
    );
  }
}
