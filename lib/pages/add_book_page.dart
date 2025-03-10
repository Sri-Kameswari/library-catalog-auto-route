import 'package:auto_route_flutter/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/book_model.dart';

@RoutePage()
class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  _AddBookPageState createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _isbnController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    _isbnController.dispose();
    super.dispose();
  }

  void _addBook() {
    final newBook = context.read<BookCubit>();
    newBook.addBook(Book(
      title: _titleController.text,
      author: _authorController.text,
      isbn: _isbnController.text,
    ));
    // context.read<BookCubit>().addBook(newBook);
    context.router.maybePop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Book')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(labelText: 'Author'),
            ),
            TextField(
              controller: _isbnController,
              decoration: const InputDecoration(labelText: 'ISBN'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addBook,
              child: const Text('Add Book'),
            ),
          ],
        ),
      ),
    );
  }
}
