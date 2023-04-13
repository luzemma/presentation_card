import 'package:flutter/material.dart';

class BadgeTitle extends StatelessWidget {
  const BadgeTitle({
    super.key,
    required this.name,
    required this.title,
  });
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            name,
            style: const TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const Divider(
          indent: 50,
          endIndent: 50,
          thickness: 1,
          color: Colors.white,
        )
      ],
    );
  }
}
