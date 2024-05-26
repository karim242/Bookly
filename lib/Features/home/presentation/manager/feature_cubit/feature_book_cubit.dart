import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeatureBookFailure(error: failure.toString()));
    }, (books) {
      emit(FeatureBookSuccess(books: books));
    });
  }
}
