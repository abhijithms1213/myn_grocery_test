
import 'package:flutter/material.dart';

class SearchBoxTop extends StatelessWidget {
  const SearchBoxTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color for the search bar
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What can we get you',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.mic,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}