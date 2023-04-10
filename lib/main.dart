import 'package:flutter/material.dart';
// import 'package:tugas_kuliah/pages/home_wisata.dart';
import 'package:tugas_kuliah/pages/new_home_wisata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomeWisata(),
      home: const NewHomeWisata(),
    );
  }
}
