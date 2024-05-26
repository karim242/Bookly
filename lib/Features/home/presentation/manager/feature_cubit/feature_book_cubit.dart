import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:equatable/equatable.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit() : super(FeatureBookInitial());
}
