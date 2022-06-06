// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../browser_button.dart';
import '../icon_card.dart';
import '../search_bar.dart';
import '../web_menu.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      constraints: BoxConstraints(maxWidth: kMaxWWidth),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "PETIAN",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              WebMenu(),
              Spacer(),
              IconCard(),
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SearchBar(),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "High-quality\nproducts for\nyour pets",
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  BrowserButton(),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Image.asset(
                    "assets/images/dog_banner.png",
                    height: 260,
                    width: 260,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
