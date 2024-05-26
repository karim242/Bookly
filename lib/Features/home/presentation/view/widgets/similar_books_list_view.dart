import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: FeatureItem(imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1611010377l/5907.jpg',),
          );
        },
      ),
    );
  }
}
