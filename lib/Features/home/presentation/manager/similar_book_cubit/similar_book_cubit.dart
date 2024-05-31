import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
   final HomeRepo homeRepo;

  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBookFailure(errorMessage: failure.toString()));
    }, (books) {
      emit(SimilarBookScucess(books: books));
    });
  }
}
