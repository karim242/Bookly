import 'package:bookly/Features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestsellerListView extends StatelessWidget {
  const BestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
