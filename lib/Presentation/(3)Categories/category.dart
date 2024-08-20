import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/product_tile_card/item_card.dart';
import 'package:myn_grocery/(1)widgets/topname,avatr,loc/top.dart';
import 'package:myn_grocery/Core/const.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key});
  final bool isSearched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopNameLocAddress(),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.black26,
              ),
              khbox5,
              isSearched
                  ? const Row(
                      children: [
                        Text("22 results for "),
                        Text(
                          "'Egg'",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  : const SizedBox(),
              const ProductGridView(),
            ],
          ),
        ),
      )),
    );
  }
}
