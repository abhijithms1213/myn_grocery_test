

import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0), // Adjust radius as needed
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF9W9vwDNn5X7zAVeDHXgUKo0nBy0pqCaDcw&s"),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          ),
          Align(
            alignment: const AlignmentDirectional(-1, 1),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 16),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color(0x66249689),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadiusDirectional.circular(20),
                  border: Border.all(
                    color: const Color(0xFF39D2C0),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60"),
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
