import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:presentation_card/common/badge_title.dart';
import 'package:presentation_card/common/custom_circle_avatar.dart';

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
      body: SafeArea(
        child: ListView.builder(
          itemCount: 2,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 200,
                height: 200,
                child: CustomCircleAvatar(
                  backgroundColor: _colors[_selectedIndex == 1 ? 0 : 1],
                  svgUrl:
                      'https://api.dicebear.com/6.x/adventurer/svg?seed=Callie&scale=50',
                ),
              );
            } else if (index == 1) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: BadgeTitle(
                    name: 'Luzemma González',
                    title: 'Flutter Developer',
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
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
