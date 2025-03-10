import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../models/book_model.dart';

@RoutePage() // Add this annotation
class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${book.title}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Author: ${book.author}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text('ISBN: ${book.isbn}', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
