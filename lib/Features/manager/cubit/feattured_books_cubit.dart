import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'feattured_books_state.dart';

class FeatturedBooksCubit extends Cubit<FeatturedBooksState> {
  FeatturedBooksCubit() : super(FeatturedBooksInitial());
}
