import 'package:flutter/material.dart';
import 'package:tmdb/pages/Detail.dart';
import 'package:tmdb/pages/home.dart';

void main() {
  runApp( App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) =>  Home(),
      },
    );
  }
}
