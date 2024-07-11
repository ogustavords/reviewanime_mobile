import 'package:flutter/material.dart';
import 'package:reviewanime/views/anime_details_view.dart';
import 'package:reviewanime/views/home_view.dart';
import 'package:reviewanime/views/profile_view.dart';
import 'package:reviewanime/views/review_create_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Reviews',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      initialRoute: '/', // Rota inicial
      routes: {
        '/': (context) => HomeView(),
        '/anime_details': (context) => AnimeDetailsView(),
        '/write_review': (context) => ReviewCreateView(),
        '/profile': (context) => ProfileView(),
      },
    );
  }
}
