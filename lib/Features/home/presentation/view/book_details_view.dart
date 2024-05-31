import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
final BookModels book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).getSimilarBooks( category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
