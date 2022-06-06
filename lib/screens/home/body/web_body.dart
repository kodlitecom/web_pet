// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web_dua/model/model.dart';

import '../../../constants.dart';
import 'components/icon_card.dart';
import 'components/post_section.dart';

class WebBody extends StatelessWidget {
  const WebBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              constraints: BoxConstraints(maxWidth: kMaxWWidth),
              child: Column(
                children: [
                  IconContainerCard(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New products",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "New products",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kButtonColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    spacing: kDefaultPadding,
                    children: [
                      ...List.generate(
                        products.length,
                        (index) => PostSection(
                          product: products[index],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
