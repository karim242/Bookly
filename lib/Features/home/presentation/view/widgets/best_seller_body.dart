

import 'package:bookly/constance.dart';
import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Harry Potter Golbet of fire",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
      style: TextStyles.textStyle20.copyWith(fontFamily: kGtSectraFine,),),
      const Text('j.k. rowling',style: TextStyles.textStyle14,),
      const CustomPriceRow()
        ],
      ),
    );
  }
}

class CustomPriceRow extends StatelessWidget {
  const CustomPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('19.99  ',style: TextStyles.textStyle20,),
        Text('15.99',style: TextStyles.textStyle16,),
      ],
    );
  }
}