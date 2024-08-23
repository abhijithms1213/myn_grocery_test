import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CircleButton({required this.icon, required this.onPressed, super.key});
  static bool isBackButton = false;

  @override
  Widget build(BuildContext context) {
    if (icon == Icons.arrow_back) {
      isBackButton = true;
    }
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isBackButton ? Colors.black12 : Colors.green),
        child: Center(
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
