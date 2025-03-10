import 'package:auto_route/auto_route.dart';
import 'package:auto_route_flutter/pages/book_details_page.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/add_book_page.dart';
import '../models/book_model.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: AddBookRoute.page),
    AutoRoute(page: BookDetailsRoute.page),
  ];

}
