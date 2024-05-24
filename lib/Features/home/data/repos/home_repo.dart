import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModels>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModels>>> fetchNewsetBooks();
}