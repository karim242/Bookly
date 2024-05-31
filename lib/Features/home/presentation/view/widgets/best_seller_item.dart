import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/presentation/view/widgets/best_seller_body.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
final BookModels book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child:  SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.18,
        child: Row(children: [
          FeatureItem(imageUrl: book.volumeInfo.imageLinks.thumbnail,),
          const SizedBox(
            width: 30,
          ),
          BestSellerBody(bookModels: book,)
        ]),
      ),
    );
  }
}
