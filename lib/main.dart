import 'package:flutter/material.dart';
import 'package:jokesapp/halaman_adaptive.dart';
import 'package:jokesapp/halaman_daftarlistjoke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanListJoke(),
    );
  }
}
