
import 'package:flutter/material.dart';

class GrabABiteSection extends StatelessWidget {
  const GrabABiteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 175,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(12)),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.shutterstock.com/image-photo/burger-tomateoes-lettuce-pickles-on-600nw-2309539129.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(Icons.favorite_border, color: Colors.white),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.orange,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: const Text(
                          'Burger Palace',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special Burger',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        Text(
                          '4.8 (120)',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      '₹100',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
                    //   Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 30),
                    //   decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius:
                    //           BorderRadius.only(topLeft: Radius.circular(200))),
                    //   child: GridView.count(
                    //     shrinkWrap: true,
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     crossAxisCount: 4,
                    //     crossAxisSpacing: 10,
                    //     mainAxisSpacing: 10,
                    //     children: [
                    //       itemDashboard('Videos', Colors.deepOrange),
                    //       itemDashboard('Analytics', Colors.green),
                    //       itemDashboard('Audience', Colors.purple),
                    //       itemDashboard('Comments', Colors.brown),
                    //       itemDashboard('Revenue', Colors.indigo),
                    //       itemDashboard('Upload', Colors.teal),
                    //       itemDashboard('About', Colors.blue),
                    //       itemDashboard('Contact', Colors.pinkAccent),
                    //     ],
                    //   ),
                    // ),