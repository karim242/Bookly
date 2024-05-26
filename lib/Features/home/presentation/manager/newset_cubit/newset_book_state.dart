part of 'newset_book_cubit.dart';

sealed class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

final class NewsetBookInitial extends NewsetBookState {}
final class NewsetBookLoading extends NewsetBookState {}
final class NewsetBookSuccess extends NewsetBookState {
final List<BookModels> books;
const NewsetBookSuccess({required this.books});

}
final class NewsetBookFailure extends NewsetBookState {
  final String error;

const  NewsetBookFailure({required this.error});
}
