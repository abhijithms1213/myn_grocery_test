import 'package:flutter/material.dart';

class AddToCartSection extends StatelessWidget {
  const AddToCartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              child: const Text('Save for later',style: TextStyle(color: Colors.black26,),),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Add to cart'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
