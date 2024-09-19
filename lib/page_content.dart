import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final String nim;
  const PageContent({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    // Map<String, String> students = {
    //   "124220128": "Aiken Ahmad Hakeem",
    //   "124220131": "Rifqi Daiva Tri Nandhika",
    //   "124220132": "Dwiki Pasa Nandhika",
    // };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Selamat Datang"),
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
