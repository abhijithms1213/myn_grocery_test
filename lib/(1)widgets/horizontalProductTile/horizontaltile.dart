import 'package:flutter/material.dart';
import 'package:myn_grocery/Core/const.dart';
import 'package:myn_grocery/(1)widgets/TileUsedForHorizontalProduct/spcloffer.dart';

class HorizontalProductTile extends StatelessWidget {
  const HorizontalProductTile({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.rating,
    required this.ratingcount,
    required this.originalPrice,
    required this.price,
    required this.category, required this.heading,
  });
  final String imageUrl;
  final String heading;

  final String productName;
  final String rating;
  final String ratingcount;
  final String originalPrice;
  final String price;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text("  $heading"),
        khbox10,
        SizedBox(
          height: 250,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => TileOfHorizontalList(
                    imageUrl: imageUrl,
                    productName: productName,
                    price: price,
                    originalPrice: originalPrice,
                    category: category,
                    rating: rating,
                    reviewsCount: ratingcount,
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: 10),
        ),
        khbox10,
      ],
    );
  }
}
