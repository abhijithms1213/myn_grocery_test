import 'package:flutter/material.dart';
import 'package:myn_grocery/Presentation/(3)Categories/widgets/tile.dart';

class ProductGridView extends StatelessWidget {
  final int itemCount = 5; // Example with an odd number of items

  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // Divide items into rows
    List<Widget> rows = [];
    for (int i = 0; i < itemCount; i += 2) {
      List<Widget> rowChildren = [];

      // Add the first tile in the row
      rowChildren.add(const Expanded(child: ProductTile()));

      if (i + 1 < itemCount) {
        // If there's a second tile, add it
        rowChildren.add(const SizedBox(width: 10));
        rowChildren.add(const Expanded(child: ProductTile()));
      } else {
        // If the number of items is odd, add a Spacer to the right
        rowChildren.add(const SizedBox(width: 10));
        rowChildren
            .add(const Expanded(child: SizedBox())); // Spacer as empty space
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
