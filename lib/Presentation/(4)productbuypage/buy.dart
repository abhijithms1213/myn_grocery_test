import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/Heading%20Of%20offers/heading_of_offers.dart';
import 'package:myn_grocery/(1)widgets/bottomsamerows/bottomrows.dart';
import 'package:myn_grocery/Core/const.dart';
import 'package:myn_grocery/Presentation/(4)productbuypage/widgets/circledtopbuttons.dart';
import 'package:myn_grocery/Presentation/(4)productbuypage/widgets/details.dart';
import 'package:myn_grocery/Presentation/(4)productbuypage/widgets/product_name.dart';
import 'package:myn_grocery/Presentation/(4)productbuypage/widgets/saveforlaterrow.dart';
import 'package:myn_grocery/Presentation/(4)productbuypage/widgets/toprow.dart';

class ProductBuyPage extends StatelessWidget {
  const ProductBuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const ProductImage(),
            const ProductInfo(),
            const AddToCartSection(),
            const DetailsSection(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const BottomSameRows(
                      productName: "Lays",
                      headingText: "Similar Items",
                      rs: "150",
                      grms: "100",
                      icon: Icon(Icons.abc_rounded)),
                  const HeadingsOfOffers(
                      text: "Brands In This Category",
                      icon: Icon(Icons.ac_unit),
                      isIconNeeded: false),
                  khbox5,
                  Container(
                    width: double.infinity,
                    height: 80,
                    color: Colors.black38,
                  ),
                  khbox10,
                    const BottomSameRows(
                      productName: "Bingo",
                      headingText: "People also bought",
                      rs: "150",
                      grms: "100",
                      icon: Icon(Icons.abc_rounded)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 56.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleButton(
            icon: Icons.arrow_back,
            onPressed: () => Navigator.pop(context),
          ),
          Row(
            children: [
              CircleButton(
                icon: Icons.info_outline,
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              CircleButton(
                icon: Icons.share,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// class BrandItem extends StatelessWidget {
//   final String name;
//   final IconData icon;

//   const BrandItem({required this.name, required this.icon, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 80,
//       margin: const EdgeInsets.only(left: 16),
//       child: Column(
//         children: [
//           CircleAvatar(child: Icon(icon)),
//           const SizedBox(height: 4),
//           Text(name, textAlign: TextAlign.center),
//         ],
//       ),
//     );
//   }
// }
