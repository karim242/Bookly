import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/presentation/view/widgets/book_price_row.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({
    super.key, required this.bookModels,
  });
final BookModels bookModels;
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
                bookModels.volumeInfo.title!,
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
             Text(
            bookModels.volumeInfo.authors![0],
              style: TextStyles.textStyle14,
            ),
             BookPriceRow(bookRating: bookModels.volumeInfo.averageRating??0,
              ratingsCount: bookModels.volumeInfo.ratingsCount??0,)
          ],
        ),
      ),
    );
  }
}
