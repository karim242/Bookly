import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SlidingLogoImage extends StatelessWidget {
  const SlidingLogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const SizedBox(),
      secondChild: Center(child: Image.asset(AssetsData.logo)),
      crossFadeState: CrossFadeState.showSecond,
      duration: const Duration(seconds: 1),
    );
  }
}
