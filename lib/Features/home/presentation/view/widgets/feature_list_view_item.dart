
import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: FeatureItem(),
                );
              },
            ),

    );
  }
}