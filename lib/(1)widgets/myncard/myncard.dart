import 'package:flutter/material.dart';

class MynCard extends StatelessWidget {
  const MynCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo_end.png"), fit: BoxFit.cover)),
    );
  }
}
