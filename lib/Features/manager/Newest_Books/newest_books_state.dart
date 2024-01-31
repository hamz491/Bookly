part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> Books;

  const NewestBooksSuccess({required this.Books});
}

final class NewestBooksFailure extends NewestBooksState {
  final String ErrorMessage;

  const NewestBooksFailure({required this.ErrorMessage});
}
