
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cheese Puffs',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('500gms', style: TextStyle(fontSize: 18, color: Colors.grey)),
          Text('Chips', style: TextStyle(fontSize: 16, color: Colors.grey)),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 18),
              Text('4.8 (120)', style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
