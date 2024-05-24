import 'package:bookly/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_list_view_item.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: kHomeViewPadding,
              child: CustomAppBar(),
            ),
            FeaturedListView(),
            SizedBox(height: 30),
            Padding(
              padding: kHomeViewPadding,
              child: Text(
                'Best Seller',
                style: TextStyles.textStyle18,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: kHomeViewPadding,
          child: BestsellerListView(),
        ),
      )
    ]);
  }
}
