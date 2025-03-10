import 'package:flutter/material.dart';

import '../models/book_model.dart';

class BookTile extends StatelessWidget {
  final Book book;
  final VoidCallback onTap;

  const BookTile ({required this.book, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Author: ${book.author}'),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward),
      onTap: onTap,
    );
  }
}