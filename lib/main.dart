import 'package:flutter/material.dart';
import 'page_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: "Pemrograman Aplikasi Mobile - Tugas 1",
      debugShowCheckedModeBanner: false,
      home: const PageLogin(),
    );
  }
}
