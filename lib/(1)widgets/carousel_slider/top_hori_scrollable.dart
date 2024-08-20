import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselsliderWidget extends StatelessWidget {
  const CarouselsliderWidget({
    super.key,
    required this.imageUrls,
    required CarouselSliderController carouselController,
    required this.initialIndex,
    required ValueNotifier<int> currentIndexNotifier,
  })  : _carouselController = carouselController,
        _currentIndexNotifier = currentIndexNotifier;

  final List<String> imageUrls;
  final CarouselSliderController _carouselController;
  final int initialIndex;
  final ValueNotifier<int> _currentIndexNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: CarouselSlider(
            items: imageUrls.map((url) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  url,
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
            carouselController: _carouselController,
            options: CarouselOptions(
              initialPage: initialIndex,
              viewportFraction: 0.5,
              disableCenter: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
              onPageChanged: (index, reason) {
                _currentIndexNotifier.value = index;
              },
            ),
          ),
        ),
        ValueListenableBuilder<int>(
          valueListenable: _currentIndexNotifier,
          builder: (context, currentIndex, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageUrls.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(currentIndex == entry.key ? 0.9 : 0.4),
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
