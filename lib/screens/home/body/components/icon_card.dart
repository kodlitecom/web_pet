// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constants.dart';

class IconContainerCard extends StatelessWidget {
  const IconContainerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          IconContainer(
            text: "Free shipping\nfrom CHF 50",
            icon: Icons.delivery_dining,
            press: () {},
          ),
          IconContainer(
            text: "99% positive\nfeedback",
            icon: Icons.favorite_outline,
            press: () {},
          ),
          IconContainer(
            text: "Easy online\npurchase",
            icon: Icons.wallet_membership_outlined,
            press: () {},
          ),
          IconContainer(
            text: "Purchase\nwith postcards",
            icon: Icons.card_travel_outlined,
            press: () {},
          ),
          IconContainer(
            text: "Huge\nrange",
            icon: Icons.check_box_outlined,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String? text;
  final IconData? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2,
        vertical: kDefaultPadding,
      ),
      child: InkWell(
        onTap: () {
          press!;
        },
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon!,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Text(
                  text!,
                  style: TextStyle(
                    height: 1.5,
                    color: kTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
