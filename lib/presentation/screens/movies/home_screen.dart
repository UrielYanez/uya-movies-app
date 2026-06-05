import 'package:flutter/material.dart';
import 'package:uya_movies_app/presentation/views/movies/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeView(),
    );
  }
}