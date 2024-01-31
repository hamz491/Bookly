import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:equatable/equatable.dart';

part 'feattured_books_state.dart';

class FeatturedBooksCubit extends Cubit<FeatturedBooksState> {
  FeatturedBooksCubit(this.homerepo) : super(FeatturedBooksInitial());

  final HomeRepo homerepo;

  Future<void> Fetch_Featured_Books() async {
    emit(FeatturedBooksLoading());
    var result = await homerepo.fetchFeaturedBooks();
    result.fold(
      (Failure) => emit(
        FeatturedBooksFailure(ErrorMessage: Failure.ErrorMess),
      ),
      (Books) => emit(
        FeatturedBooksSuccess(Books: Books),
      ),
    );
  }
}
