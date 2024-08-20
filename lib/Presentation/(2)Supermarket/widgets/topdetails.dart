

import 'package:flutter/material.dart';
import 'package:myn_grocery/Core/const.dart';

class TopDetails extends StatelessWidget {
  const TopDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Fresher Super Market",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.calendar_month))
            ],
          ),
          const Text(
            "Kottarakkara",
            style: TextStyle(color: Colors.black26),
          ),
          khbox10,
          const DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(65, 255, 193, 7),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.flag,
                ),
                kwbox10,
                Text("Free delivery on orders above Rs 700"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}