import 'package:flutter/material.dart';

class TileOfHorizontalList extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;
  final String originalPrice;
  final String category;
  final String rating;
  final String reviewsCount;

  const TileOfHorizontalList({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.originalPrice,
    required this.category,
    required this.rating,
    required this.reviewsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imageUrl),
                                fit: BoxFit.cover)),
                        height: 150,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Rs $price | $originalPrice rs",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$rating ($reviewsCount)',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          category,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
