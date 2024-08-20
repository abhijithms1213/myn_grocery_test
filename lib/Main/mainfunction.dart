import 'package:flutter/material.dart';
import 'package:myn_grocery/BottomNav/navbar.dart';
import 'package:myn_grocery/Presentation/(1)Offers%20of%20the%20day/offer.dart';
import 'package:myn_grocery/Presentation/(2)Supermarket/supermarket.dart';
import 'package:myn_grocery/Presentation/(3)Categories/category.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});
  final List screens = [
    ScreenOfferOfTheDay(),
    ScreenSupermarket(),
    ScreenCategory()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: values,
          builder: (context, int news, child) {
            return screens[news];
          }),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
