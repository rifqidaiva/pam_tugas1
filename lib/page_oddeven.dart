import 'package:flutter/material.dart';

class PageOddeven extends StatefulWidget {
  const PageOddeven({super.key});

  @override
  State<PageOddeven> createState() => _PageOddevenState();
}

class _PageOddevenState extends State<PageOddeven> {
  final TextEditingController controller = TextEditingController();
  String result = '';

  void _checkGanjilGenap() {
    setState(() {
      int? number = int.tryParse(controller.text);
      if (number == null) {
        result = 'Masukkan angka yang valid';
      } else {
        if (number % 2 == 0) {
          result = '$number adalah bilangan Genap';
        } else {
          result = '$number adalah bilangan Ganjil';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan bilangan',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: _checkGanjilGenap,
              child: const Text(
                'Cek',
                style: TextStyle(
                  color: Color.fromARGB(
                      255, 0, 0, 0), // Sesuaikan warna teks menjadi amber
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
