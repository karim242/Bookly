import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(aspectRatio: 2.7/4, 
    child: Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image:  AssetImage(
            AssetsData.testImage),
          fit: BoxFit.fill,
        ),
      ),
      
    ),);

  }
}