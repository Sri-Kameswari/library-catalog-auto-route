import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import '../book_cubit.dart';
import '../models/book_model.dart';
import '../widgets/book_tile.dart';
import '../app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Library Catalog')),
      body: BlocBuilder<BookCubit, List<Book>>(
        builder: (context, books) {
          if (books.isEmpty) {
            return const Center(child: Text('No books available'));
          } else {
            return ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return BookTile(
                  book: book,
                  onTap: () => context.router.push(BookDetailsRoute(book: book)),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.push(const AddBookRoute()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
