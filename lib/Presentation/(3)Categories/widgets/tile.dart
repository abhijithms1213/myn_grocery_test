import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/product_tile_card/item_card.dart';
import 'package:myn_grocery/Core/const.dart';

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
