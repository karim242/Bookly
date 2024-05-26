import 'package:bookly/Features/home/presentation/manager/feature_cubit/feature_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if (state is FeatureBookSuccess) {
          return SizedBox(
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
        } else if (state is FeatureBookFailure) {
          return CustomErrorWidget(errMessage: state.error);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
