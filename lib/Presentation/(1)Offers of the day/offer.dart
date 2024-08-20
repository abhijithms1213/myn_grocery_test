import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/Heading%20Of%20offers/heading_of_offers.dart';
import 'package:myn_grocery/(1)widgets/horizontalProductTile/horizontaltile.dart';
import 'package:myn_grocery/(1)widgets/myncard/myncard.dart';
import 'package:myn_grocery/Core/const.dart';
import 'package:myn_grocery/(1)widgets/topname,avatr,loc/top.dart';
import 'package:myn_grocery/(1)widgets/carousel_slider/top_hori_scrollable.dart';

class ScreenOfferOfTheDay extends StatelessWidget {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  final int initialIndex = 1;
  final List<String> imageUrls = [
    'https://picsum.photos/seed/410/600',
    'https://picsum.photos/seed/995/600',
    'https://picsum.photos/seed/384/600',
    'https://picsum.photos/seed/663/600',
  ];
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(1);

  ScreenOfferOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopNameLocAddress(),
              CarouselsliderWidget(
                  imageUrls: imageUrls,
                  carouselController: _carouselController,
                  initialIndex: initialIndex,
                  currentIndexNotifier: _currentIndexNotifier),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingsOfOffers(
                      text: 'Special Offer',
                      icon: Icon(Icons.done),
                      isIconNeeded: false,
                    ),
                    khbox10,
                    HorizontalProductTile(
                      heading: "Supermarket",
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEaf4W3kIcTi9n9UXgXXkGoVAQEAv7pYXn-w&s",
                      productName: "Apple",
                      rating: "4.8",
                      ratingcount: "120",
                      category: "Vegetable & Fruits",
                      price: '100',
                      originalPrice: '140',
                    ),
                    khbox10,
                    HorizontalProductTile(
                      heading: "Electronics",
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD-33uGGSm4Sxcuh7MgjCcpooc3hM3p0tM6g&s",
                      productName: "Portable Fan",
                      rating: "4.8",
                      ratingcount: "120",
                      category: "Vegetable & Fruits",
                      price: '100',
                      originalPrice: '140',
                    ),
                    khbox10,
                    HorizontalProductTile(
                      heading: "Fashion",
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZFwuI_rEhHKjKGOSZXi5XpfgOo71oXmiWBw&s",
                      productName: "Shirts",
                      rating: "4.8",
                      ratingcount: "120",
                      category: "Vegetable & Fruits",
                      price: '100',
                      originalPrice: '140',
                    ),
                    MynCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}