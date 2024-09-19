import 'package:flutter/material.dart';
import 'package:pam_tugas1/page_calculator.dart';
import 'package:pam_tugas1/page_oddeven.dart';

class PageHome extends StatefulWidget {
  final String nim;
  const PageHome({super.key, required this.nim});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.purpleAccent.shade100,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Beranda',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.calculate),
              icon: Icon(Icons.calculate_outlined),
              label: 'Kalkulator',
            ),
            NavigationDestination(
              icon: Icon(Icons.assignment_add),
              label: 'GanGen',
            ),
          ]),
      appBar: AppBar(
        title: const Text("Selamat Datang"),
      ),
      body: <Widget>[
        const PageHomeCredit(),
        const TamKurPage(),
        const PageOddeven(),
      ][currentPageIndex],
    );
  }
}

class PageHomeCredit extends StatelessWidget {
  const PageHomeCredit({super.key});

  @override
  Widget build(BuildContext context) {
    Widget memberCard({required String name, required String id}) {
      return Card.filled(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                id,
                style: const TextStyle(color: Colors.black45),
              ),
            ],
          ),
        ),
      );
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            memberCard(name: "Aiken Ahmad Hakeem", id: "124220128"),
            memberCard(name: "Rifqi Daiva Tri Nandhika", id: "124220131"),
            memberCard(name: "Dwiki Pasa Nandhika", id: "124220132"),
          ],
        ),
      ),
    );
  }
}
