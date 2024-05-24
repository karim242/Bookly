import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl extends HomeRepo {
  ApiService apiService;
  HomeRepositoryImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModels>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");

      List<BookModels> books = [];

      for (var item in data['items']) {

        try {
          books.add(BookModels.fromJson(item));
        } catch (e) {
          books.add(BookModels.fromJson(item));
        }
      }

      return right(books);

    } catch (e) {
    return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
