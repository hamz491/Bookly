import 'package:bookly/Core/Errors/Failure.dart';
import 'package:bookly/Core/utils/api_services.dart';
import 'package:bookly/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepo_Impl implements HomeRepo {
  Api_Services service = Api_Services();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await service.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest");
      List<BookModel> Books = [];
      for (var item in data["items"]) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioException(e));
      }
      return left(serverFailure(ErrorMess: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await service.get(
          endPoint: "volumes?q=subject:programming&Filtering=free-ebooks");
      List<BookModel> Books = [];
      for (var item in data["items"]) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioException(e));
      }
      return left(serverFailure(ErrorMess: e.toString()));
    }
  }
}
