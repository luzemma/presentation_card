import 'package:flutter/material.dart';

class PresentationCardScreen extends StatefulWidget {
  const PresentationCardScreen({super.key});

  @override
  State<PresentationCardScreen> createState() => _PresentationCardScreenState();
}

class _PresentationCardScreenState extends State<PresentationCardScreen> {
  static const List<MaterialColor> _colors = [Colors.lightBlue, Colors.amber];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors[_selectedIndex],
      body: const Center(
        child: SizedBox(
          child: Text('Luzemma González'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.colorize),
            label: 'Blue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Yellow',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: _colors[_selectedIndex],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
