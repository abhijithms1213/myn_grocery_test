
import 'package:flutter/material.dart';

class ProductBuyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductBuyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(icon: const Icon(Icons.info_outline), onPressed: () {}),
        IconButton(icon: const Icon(Icons.share), onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
            'https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/NI_CATALOG/IMAGES/CIW/2024/5/20/45aac08a-681a-4634-8f87-d37565ddf252_chipsnachosandpopcorn_UGANZXKXG2_MN.png'),
        Positioned(
          right: 10,
          bottom: 10,
          child: Column(
            children: [
              IconButton(icon: const Icon(Icons.zoom_in), onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.favorite_border,color: Colors.black45,), onPressed: () {}),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => Container(
                      margin: const EdgeInsets.all(2),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == 0 ? Colors.blue : Colors.grey,
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
