import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/TopSearchBox/seachbox.dart';

class TopNameLocAddress extends StatelessWidget {
  const TopNameLocAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor:
                    Colors.orangeAccent, // Background color for the avatar
                child: Icon(
                  Icons.person,
                  color: Colors.black, // Icon color inside the avatar
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Full Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '560100, Bangalore, Karnataka, India',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          SearchBoxTop(),
        ],
      ),
    );
  }
}
