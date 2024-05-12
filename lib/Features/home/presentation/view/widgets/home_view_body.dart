import 'package:bookly/Features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_list_view_item.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedListView(),
            SizedBox(height: 30),
            Text('Best Seller',style: TextStyles.textStyle18,),
            SizedBox(height: 10),
     BestSellerItem(),
          ],
        ),
      ),
    );
  }
}