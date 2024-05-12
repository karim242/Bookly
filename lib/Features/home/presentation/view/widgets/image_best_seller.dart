import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class ImageBestSeller extends StatelessWidget {
  const ImageBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(aspectRatio: 2.5/4, 
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
      
    ),);

  }
}