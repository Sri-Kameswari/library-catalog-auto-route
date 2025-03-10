import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_router.dart';
import 'package:flutter/material.dart';
import 'book_cubit.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit(),
      child: MaterialApp.router(
        title: 'Library Catalog',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}