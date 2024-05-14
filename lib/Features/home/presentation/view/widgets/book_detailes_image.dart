import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookDetailesImage extends StatelessWidget {
  const BookDetailesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6/4, 
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image:  AssetImage(
              AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
        
     ),
    );

  }
}