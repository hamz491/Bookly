import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/BookModel/book_model.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homerepo) : super(NewestBooksInitial());

  final HomeRepo homerepo;

  Future<void> Fetch_Newest_Books() async {
    emit(NewestBooksLoading());

    var result = await homerepo.fetchNewestBooks();

    result.fold(
      (Failure) => emit(
        NewestBooksFailure(ErrorMessage: Failure.ErrorMess),
      ),
      (Books) => emit(
        NewestBooksSuccess(Books: Books),
      ),
    );
  }
}
