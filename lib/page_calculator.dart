import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TamKurPage extends StatefulWidget {
  const TamKurPage({super.key});

  @override
  State<TamKurPage> createState() => _TamKurPageState();
}

class _TamKurPageState extends State<TamKurPage> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  String _result = '';

  void _add() {
    setState(() {
      double a = double.tryParse(_controllerA.text) ?? 0;
      double b = double.tryParse(_controllerB.text) ?? 0;
      _result = 'Hasil Penjumlahan: ${a + b}';
    });
  }

  void _subtract() {
    setState(() {
      double a = double.tryParse(_controllerA.text) ?? 0;
      double b = double.tryParse(_controllerB.text) ?? 0;
      _result = 'Hasil Pengurangan: ${a - b}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan bilangan A',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan bilangan B',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: _add,
                  child: const Text(
                    'Penjumlahan',
                    style: TextStyle(
                      color: Color.fromARGB(
                          255, 0, 0, 0), // Sesuaikan warna teks menjadi amber
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: _subtract,
                  child: const Text(
                    'Pengurangan',
                    style: TextStyle(
                      color: Color.fromARGB(
                          255, 0, 0, 0), // Sesuaikan warna teks menjadi amber
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
