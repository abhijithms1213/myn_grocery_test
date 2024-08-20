
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
