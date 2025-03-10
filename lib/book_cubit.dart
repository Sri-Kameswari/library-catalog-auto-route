import 'package:auto_route_flutter/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCubit extends Cubit<List<Book>> {
  BookCubit() : super([]);

  void addBook(Book book) {
    final updatedBooksList = List<Book>.from(state);
    updatedBooksList.add(book);

    emit(updatedBooksList);
  }
}