import 'package:flutter/material.dart';
import 'package:myn_grocery/(1)widgets/Heading%20Of%20offers/heading_of_offers.dart';
import 'package:myn_grocery/(1)widgets/containerwithaddbutton/containerwithaddbutton.dart';
import 'package:myn_grocery/Core/const.dart';

class BottomSameRows extends StatelessWidget {
  const BottomSameRows({
    super.key,
    required this.productName,
    required this.headingText,
    required this.rs,
    required this.grms,
    required this.icon,
  });

  final String productName;
  final String headingText;
  final String rs;
  final String grms;

  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingsOfOffers(text: headingText, icon: icon, isIconNeeded: false),
        khbox10,
        SizedBox(
          height: 220,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ContainerWithAdddButton(
                  productName: productName, rs: rs, grms: grms),
              separatorBuilder: (context, index) => kwbox10,
              itemCount: 10),
        ),
      ],
    );
  }
}
