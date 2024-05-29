import 'package:bookly/Features/home/presentation/manager/newset_cubit/newset_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
  return ListView.builder(
    padding: EdgeInsets.zero,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: state.books.length,
    itemBuilder: (BuildContext context, int index) {
      return  Padding(
        padding:const EdgeInsets.symmetric(vertical: 8.0),
        child: BookListViewItem(book: state.books[index],),
      );
    },
  );
}
      else if(state is NewsetBookFailure){
        return CustomErrorWidget(errMessage: state.error);

      }else{
        return const CustomLoadingIndicator();
      }
      }
    );
  }
}
