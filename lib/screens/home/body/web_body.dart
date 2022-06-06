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
                  Divider(),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
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
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: kSecColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/care.png",
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding / 2),
                          child: Text(
                            "Care and hugiene dogs",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
