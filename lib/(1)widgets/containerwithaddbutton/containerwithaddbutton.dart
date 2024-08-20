import 'package:flutter/material.dart';

class ContainerWithAdddButton extends StatelessWidget {
  const ContainerWithAdddButton(
      {super.key,
      required this.productName,
      required this.rs,
      required this.grms});

  final String productName;
  final String rs;
  final String grms;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 125,
          decoration: BoxDecoration(
            // color: const Color.fromARGB(221, 225, 224, 224),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 253, 252, 252),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtQRuaHNd-xZ3i8EbmmbcT6XTjunCEKr_mLg&s'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.add, color: Colors.green)),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    grms,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '₹$rs',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
