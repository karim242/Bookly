import 'package:bookly/Features/home/presentation/view/widgets/best_seller_body.dart';
import 'package:bookly/Features/home/presentation/view/widgets/image_best_seller.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push( AppRouter.kBookDetailsView);
      },
      child: const SizedBox(
         height: 125, 
        child:  Row(
          children: [
          ImageBestSeller(),
          SizedBox(width: 30,),
          BestSellerBody()
         
           ]
        ),
      ),
    );
  }
}
