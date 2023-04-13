import 'package:flutter/material.dart';
import 'package:presentation_card/common/badge_title.dart';
import 'package:presentation_card/common/custom_card_data.dart';
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
          itemCount: 6,
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
                  imageUrl:
                      'https://avatars.githubusercontent.com/u/4196183?v=4',
                ),
              );
            } else if (index == 1) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: BadgeTitle(
                    name: 'Luzemma González',
                    title: 'Backend & Mobile Developer',
                  ),
                ),
              );
            } else if (index == 2) {
              return CustomCardData(
                icon: Icons.phone,
                text: '🇲🇽  +52 477 635 1805',
                iconColor: _colors[_selectedIndex],
                textColor: _colors[_selectedIndex],
              );
            } else if (index == 3) {
              return CustomCardData(
                icon: Icons.email,
                text: 'luzemma.gonzalez@gmail.com',
                iconColor: _colors[_selectedIndex],
                textColor: _colors[_selectedIndex],
              );
            } else if (index == 4) {
              return CustomCardData(
                icon: Icons.terminal,
                text: 'github.com/luzemma',
                iconColor: _colors[_selectedIndex],
                textColor: _colors[_selectedIndex],
              );
            } else if (index == 5) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    const Text(
                      'Scan me',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/images/qrcode.png',
                      width: 200,
                      height: 200,
                    ),
                  ],
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
