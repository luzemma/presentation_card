import 'package:flutter/material.dart';

class CustomCardData extends StatelessWidget {
  const CustomCardData({
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
    super.key,
  });

  final IconData icon;
  final String text;
  final MaterialColor iconColor;
  final MaterialColor textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: textColor.shade500,
            fontSize: 20,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
