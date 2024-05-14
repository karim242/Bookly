import 'package:bookly/Features/home/presentation/view/widgets/book_price_row.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "Harry Potter and the Golbet of fire",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.textStyle20.copyWith(
                  fontFamily: kGtSectraFine,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'j.k. rowling',
              style: TextStyles.textStyle14,
            ),
            const BookPriceRow()
          ],
        ),
      ),
    );
  }
}