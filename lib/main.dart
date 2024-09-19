import 'package:flutter/material.dart';
import 'page_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Pemrograman Aplikasi Mobile - Tugas 1",
      debugShowCheckedModeBanner: false,
      home: PageLogin(),
    );
  }
}
