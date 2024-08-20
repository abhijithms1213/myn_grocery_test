import 'package:flutter/material.dart';

class HeadingsOfOffers extends StatelessWidget {
  const HeadingsOfOffers({
    super.key,
    required this.text,
    required this.icon, required this.isIconNeeded,
  });
  final String text;
  final Icon icon;
  final bool isIconNeeded;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Text(
          ' $text',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
        const Spacer(),
        isIconNeeded
            ? IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_circle_right_rounded))
            : SizedBox()
      ],
    );
  }
}
