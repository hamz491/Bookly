import 'package:bookly/Core/Errors/Failure.dart';
import 'package:bookly/Core/utils/api_services.dart';
import 'package:bookly/Features/Home/data/Models/BookModel/book_model.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepo_Impl implements HomeRepo {
  Api_Services service;
  HomeRepo_Impl({required this.service});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await service.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest");
      List<BookModel> BooksList = [];
      for (var item in data["items"]) {
        BooksList.add(BookModel.fromJson(item));
      }
      return right(BooksList);
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
