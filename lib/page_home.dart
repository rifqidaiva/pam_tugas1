import 'package:flutter/material.dart';

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
        const Text("Beranda"),
        const Text("Kalkulator"),
        const Text("Ganjil Genap"),
      ][currentPageIndex],
    );
  }
}

class PageCredit extends StatelessWidget {
  const PageCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
