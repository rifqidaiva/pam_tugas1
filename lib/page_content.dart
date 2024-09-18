import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final String nim;
  const PageContent({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    Map<String, String> assistants = {
      "123210022": "I Gusti Ketut Dimas Pramantya",
      "123210181": "Komang Yuda Saputra",
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Selamat Datang"),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.purple,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            constraints: const BoxConstraints(maxHeight: 180),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  assistants[nim] ?? "Nama asisten akan muncul di sini!",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(nim),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
