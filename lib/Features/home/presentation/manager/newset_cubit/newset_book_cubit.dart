import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());
  final HomeRepo homeRepo;

  Future<void> getNewsetBooks() async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBookFailure(error: failure.toString()));
    }, (books) {
      emit(NewsetBookSuccess(books: books));
    });
  }
}
