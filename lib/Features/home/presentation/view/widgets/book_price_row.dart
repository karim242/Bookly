 
 
import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookPriceRow extends StatelessWidget {
  const BookPriceRow({
    super.key 
  });
  @override
  Widget build(BuildContext context) {
    return  const Row(

      children: [
        Text(
          '19.99  ',
          style: TextStyles.textStyle20,
        ),
        Spacer(),
      BookRating()
      ],
    );
  }
}
