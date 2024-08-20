import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/Heading%20Of%20offers/heading_of_offers.dart';
import 'package:myn_grocery/(1)widgets/TileUsedForHorizontalProduct/spcloffer.dart';
import 'package:myn_grocery/(1)widgets/TopSearchBox/seachbox.dart';
import 'package:myn_grocery/(1)widgets/bottomsamerows/bottomrows.dart';
import 'package:myn_grocery/(1)widgets/carousel_slider/top_hori_scrollable.dart';
import 'package:myn_grocery/(1)widgets/myncard/myncard.dart';
import 'package:myn_grocery/Core/const.dart';
import 'package:myn_grocery/Presentation/(2)Supermarket/widgets/containerinner.dart';
import 'package:myn_grocery/Presentation/(2)Supermarket/widgets/grababite.dart';
import 'package:myn_grocery/Presentation/(2)Supermarket/widgets/top.dart';
import 'package:myn_grocery/Presentation/(2)Supermarket/widgets/topdetails.dart';

class ScreenSupermarket extends StatelessWidget {
  ScreenSupermarket({super.key});
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Top(), //top images grouped
              const TopDetails(), //from text portion
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchBoxTop(),
                    khbox15,
                    const HeadingsOfOffers(
                      text: "Our offers of the day",
                      icon: Icon(Icons.calendar_month),
                      isIconNeeded: false,
                    ),
                    const TileOfHorizontalList(
                        imageUrl:
                            "https://png.pngtree.com/png-clipart/20190910/ourmid/pngtree-half-husked-cut-coconut-with-leaves-png-image_1727610.jpg",
                        productName: "coconut",
                        price: "100",
                        originalPrice: "120",
                        category: "Vegetable and Fruit",
                        rating: "4.5",
                        reviewsCount: "240"),
                    const HeadingsOfOffers(
                      text: "Order Again",
                      icon: Icon(Icons.food_bank),
                      isIconNeeded: true,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              const ContainerInner4Containers(),
                          separatorBuilder: (context, index) => kwbox10,
                          itemCount: 10),
                    ),
                    khbox10,
                    CarouselsliderWidget(
                        imageUrls: imageUrls,
                        carouselController: _carouselController,
                        initialIndex: initialIndex,
                        currentIndexNotifier: _currentIndexNotifier),
                    khbox15,
                    const HeadingsOfOffers(
                        text: "Shop By Category",
                        icon: Icon(Icons.message),
                        isIconNeeded: true),
                    khbox10,
                    const HeadingsOfOffers(
                        text: "Hot Deals",
                        icon: Icon(Icons.girl_outlined),
                        isIconNeeded: true),
                    khbox5,
                    Container(
                      height: 75,
                      width: double.infinity,
                      color: const Color.fromARGB(115, 214, 204, 204),
                    ),
                    khbox20,
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(95, 122, 122, 122),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingsOfOffers(
                          text: "Grab a Bite",
                          icon: Icon(Icons.food_bank_sharp),
                          isIconNeeded: true),
                      khbox10,
                      SizedBox(
                        height: 220,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                const GrabABiteSection(),
                            separatorBuilder: (context, index) => kwbox10,
                            itemCount: 10),
                      ),
                      khbox10,
                    ],
                  ),
                ),
              ),
              khbox20,
              const BottomSameRows(
                productName: "Lays Chips -",
                headingText: "Snack",
                rs: "10",
                grms: "130",
                icon: Icon(Icons.abc),
              ),
              const BottomSameRows(
                productName: "Vegetables",
                headingText: "Cabage",
                rs: "30",
                grms: "1 kg",
                icon: Icon(Icons.balance),
              ),
              const BottomSameRows(
                productName: "Lays Chips -",
                headingText: "Dairy & breakfast",
                rs: "10",
                grms: "130",
                icon: Icon(Icons.abc),
              ),
              const MynCard(),
            ],
          ),
        ),
      ),
    );
  }
}

