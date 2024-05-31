import 'package:bookly/Features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widgets/feature_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookScucess) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.15,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return  Padding(
          padding:const EdgeInsets.only(right: 10.0),
          child: FeatureItem(
            imageUrl:state.books[index].volumeInfo.imageLinks.thumbnail,
          ),
        );
      },
    ),
  );
}
else if(state is SimilarBookFailure){
  return CustomErrorWidget(errMessage: state.errorMessage);
  }
  else{
    return const CustomLoadingIndicator();
  }
      },
    );
  }
}
