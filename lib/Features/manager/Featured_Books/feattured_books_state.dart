part of 'feattured_books_cubit.dart';

sealed class FeatturedBooksState extends Equatable {
  const FeatturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeatturedBooksInitial extends FeatturedBooksState {}

final class FeatturedBooksLoading extends FeatturedBooksState {}

final class FeatturedBooksSuccess extends FeatturedBooksState {
  final List<BookModel> Books;

  const FeatturedBooksSuccess({required this.Books});
}

final class FeatturedBooksFailure extends FeatturedBooksState {
  final String ErrorMessage;

  const FeatturedBooksFailure({required this.ErrorMessage});
}
