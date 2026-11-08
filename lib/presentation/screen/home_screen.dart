import 'package:flutter/material.dart';

import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainScreen(),
    const Center(child: Text('books', style: TextStyle(fontSize: 22))),
    const Center(child: Text('account', style: TextStyle(fontSize: 22))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'main'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'books'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'my account',
          ),
        ],
      ),
    );
  }
}
