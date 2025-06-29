import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', name: 'home', builder: (context, state) => HomePage()),
    // Place for another routes here
  ],
);
