import 'package:flutter/material.dart';
import 'package:myn_grocery/Core/const.dart';

class ProductGridView extends StatelessWidget {
  final int itemCount = 6; // Number of items

  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // Divide items into rows
    List<Widget> rows = [];
    for (int i = 0; i < itemCount; i += 2) {
      // Handle the last row with a single item if the number is odd
      List<Widget> rowChildren = [];
      rowChildren.add(const Expanded(child: ProductTile()));
      if (i + 1 < itemCount) {
        rowChildren.add(const SizedBox(width: 10));
        rowChildren.add(const Expanded(child: ProductTile()));
      }

      rows.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: rowChildren,
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: rows,
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(
              'https://media.istockphoto.com/id/1405782147/photo/woman-separating-egg-yolk-from-white-over-glass-bowl-at-light-wooden-table-top-view.jpg?s=1024x1024&w=is&k=20&c=9mlPOXH9AHxkzDesncdj8goaV0Rol0ow_aTTD8Pi6vA=',
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Eggoz Nutrition',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  'Brown Eggs',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                khbox4,
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          TileForAvailableQuantityOfproduct(
                            bgcolor: Colors.deepPurple,
                            textcolor: Colors.white,
                            index: index,
                          ),
                      separatorBuilder: (context, index) => kwbox10,
                      itemCount: 3),
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    Text(
                      '₹100',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'MRP ₹130',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.shopping_basket_outlined, color: Colors.grey),
              const SizedBox(width: 8),
              Switch(
                value: false,
                onChanged: (value) {},
              )
            ],
          ),
          khbox10,
        ],
      ),
    );
  }
}

class TileForAvailableQuantityOfproduct extends StatelessWidget {
  const TileForAvailableQuantityOfproduct({
    super.key,
    required this.bgcolor,
    required this.textcolor,
    required this.index,
  });
  final Color bgcolor;
  final Color textcolor;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.center,
            '10\nPieces',
            style: TextStyle(color: textcolor, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
