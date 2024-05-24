import 'package:bookly/Features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'You can also Like',
        style: TextStyles.textStyle14.copyWith(
          fontWeight: FontWeight.w900,
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      const SimilarBooksListView()
    ]);
  }
}
